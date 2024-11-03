import { createSlice, createAsyncThunk } from '@reduxjs/toolkit';

const fetchBannerData = createAsyncThunk(
    'user/fetchBannerData',
    async () => {
        try {
            const token = localStorage.getItem('token');
            const headers = { Authorization: `Bearer ${token}` };

            const profileResponse = await fetch('https://take-home-test-api.nutech-integrasi.com/profile', { headers });
            const profileData = await profileResponse.json();

            const balanceResponse = await fetch('https://take-home-test-api.nutech-integrasi.com/balance', { headers });
            const balanceData = await balanceResponse.json();

            return {
                profile: profileData.data,
                balance: balanceData.data.balance,
            };
        } catch (error) {
            console.error('Error fetching user data:', error);
            throw error;
        }
    }
);

const bannerSlice = createSlice({
    name: 'user',
    initialState: {
        profile: null,
        balance: '0',
        error: null,
    },
    reducers: {},
    extraReducers: (builder) => {
        builder
            .addCase(fetchBannerData.fulfilled, (state, action) => {
                state.profile = action.payload.profile;
                state.balance = action.payload.balance;
            })
            .addCase(fetchBannerData.rejected, (state, action) => {
                state.error = action.error.message;
            });
    },
});

export default bannerSlice.reducer;
export { fetchBannerData };
