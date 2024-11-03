warning: in the working copy of 'src/App.js', LF will be replaced by CRLF the next time Git touches it
warning: in the working copy of 'src/layouts/ProtectedRoute.js', LF will be replaced by CRLF the next time Git touches it
warning: in the working copy of 'src/layouts/auth/Dashboard.js', LF will be replaced by CRLF the next time Git touches it
warning: in the working copy of 'src/layouts/auth/Payment.js', LF will be replaced by CRLF the next time Git touches it
warning: in the working copy of 'src/layouts/auth/Profile.js', LF will be replaced by CRLF the next time Git touches it
warning: in the working copy of 'src/layouts/auth/TopUp.js', LF will be replaced by CRLF the next time Git touches it
warning: in the working copy of 'src/layouts/auth/Transactions.js', LF will be replaced by CRLF the next time Git touches it
warning: in the working copy of 'src/layouts/components/Navbar.js', LF will be replaced by CRLF the next time Git touches it
warning: in the working copy of 'src/layouts/components/Saldo.js', LF will be replaced by CRLF the next time Git touches it
warning: in the working copy of 'src/layouts/guest/LoginForm.js', LF will be replaced by CRLF the next time Git touches it
warning: in the working copy of 'src/layouts/guest/RegistrationForm.js', LF will be replaced by CRLF the next time Git touches it
warning: in the working copy of 'src/redux/slices/balanceSlice.js', LF will be replaced by CRLF the next time Git touches it
warning: in the working copy of 'src/redux/slices/bannerSlice.js', LF will be replaced by CRLF the next time Git touches it
warning: in the working copy of 'src/redux/slices/index.js', LF will be replaced by CRLF the next time Git touches it
warning: in the working copy of 'src/redux/store.js', LF will be replaced by CRLF the next time Git touches it
[1mdiff --git a/src/App.js b/src/App.js[m
[1mindex 00cbf20..df790d2 100644[m
[1m--- a/src/App.js[m
[1m+++ b/src/App.js[m
[36m@@ -1,4 +1,3 @@[m
[31m-// src/App.js[m
 import React from 'react';[m
 import { BrowserRouter as Router, Route, Routes } from 'react-router-dom';[m
 import RegistrationForm from './layouts/guest/RegistrationForm';[m
[1mdiff --git a/src/App.test.js b/src/App.test.js[m
[1mdeleted file mode 100644[m
[1mindex 1f03afe..0000000[m
[1m--- a/src/App.test.js[m
[1m+++ /dev/null[m
[36m@@ -1,8 +0,0 @@[m
[31m-import { render, screen } from '@testing-library/react';[m
[31m-import App from './App';[m
[31m-[m
[31m-test('renders learn react link', () => {[m
[31m-  render(<App />);[m
[31m-  const linkElement = screen.getByText(/learn react/i);[m
[31m-  expect(linkElement).toBeInTheDocument();[m
[31m-});[m
[1mdiff --git a/src/layouts/ProtectedRoute.js b/src/layouts/ProtectedRoute.js[m
[1mindex c36e26c..3c211c4 100644[m
[1m--- a/src/layouts/ProtectedRoute.js[m
[1m+++ b/src/layouts/ProtectedRoute.js[m
[36m@@ -1,4 +1,3 @@[m
[31m-// src/components/ProtectedRoute.js[m
 import React from 'react';[m
 import { Navigate } from 'react-router-dom';[m
 import Navbar from './components/Navbar';[m
[1mdiff --git a/src/layouts/auth/Dashboard.js b/src/layouts/auth/Dashboard.js[m
[1mindex c4c209c..7e58e31 100644[m
[1m--- a/src/layouts/auth/Dashboard.js[m
[1m+++ b/src/layouts/auth/Dashboard.js[m
[36m@@ -1,4 +1,3 @@[m
[31m-// src/components/Dashboard.js[m
 import React, { useEffect, useState } from 'react';[m
 import { useNavigate } from 'react-router-dom';[m
 import Saldo from '../components/Saldo';[m
[36m@@ -20,13 +19,13 @@[m [mconst Dashboard = () => {[m
                 const headers = { Authorization: `Bearer ${token}` };[m
 [m
                 // Fetch services[m
[31m-                const servicesResponse = await fetch(`${process.env.REACT_APP_API_URL}/services`, { headers });[m
[32m+[m[32m                const servicesResponse = await fetch('https://take-home-test-api.nutech-integrasi.com/services', { headers });[m
                 if (!servicesResponse.ok) throw new Error('Services fetch failed');[m
                 const servicesData = await servicesResponse.json();[m
                 setServices(servicesData.data);[m
 [m
                 // Fetch banner[m
[31m-                const bannerResponse = await fetch(`${process.env.REACT_APP_API_URL}/banner`, { headers });[m
[32m+[m[32m                const bannerResponse = await fetch('https://take-home-test-api.nutech-integrasi.com/banner', { headers });[m
                 if (!bannerResponse.ok) throw new Error('Banner fetch failed');[m
                 const bannerData = await bannerResponse.json();[m
                 setBanner(bannerData.data);[m
[1mdiff --git a/src/layouts/auth/Payment.js b/src/layouts/auth/Payment.js[m
[1mindex 47d4d18..f4b326f 100644[m
[1m--- a/src/layouts/auth/Payment.js[m
[1m+++ b/src/layouts/auth/Payment.js[m
[36m@@ -1,4 +1,3 @@[m
[31m-// src/components/Payment.js[m
 import { useDispatch } from 'react-redux';[m
 import Swal from 'sweetalert2';[m
 import { useLocation } from 'react-router-dom';[m
[36m@@ -35,7 +34,7 @@[m [mconst Payment = () => {[m
     const handlePayment = async () => {[m
         const token = localStorage.getItem('token');[m
         try {[m
[31m-            const response = await fetch(`${process.env.REACT_APP_API_URL}/transaction`, {[m
[32m+[m[32m            const response = await fetch('https://take-home-test-api.nutech-integrasi.com/transaction', {[m
                 method: 'POST',[m
                 headers: {[m
                     'Content-Type': 'application/json',[m
[1mdiff --git a/src/layouts/auth/Profile.js b/src/layouts/auth/Profile.js[m
[1mindex 0bd7fbe..09944e2 100644[m
[1m--- a/src/layouts/auth/Profile.js[m
[1m+++ b/src/layouts/auth/Profile.js[m
[36m@@ -1,4 +1,3 @@[m
[31m-// src/components/Profile.js[m
 import React, { useEffect, useState } from 'react';[m
 import { useNavigate } from 'react-router-dom';[m
 import Swal from 'sweetalert2';[m
[36m@@ -15,7 +14,7 @@[m [mconst Profile = () => {[m
 [m
     const fetchUserProfile = async () => {[m
         const token = localStorage.getItem('token');[m
[31m-        const response = await fetch(`${process.env.REACT_APP_API_URL}/profile`, {[m
[32m+[m[32m        const response = await fetch('https://take-home-test-api.nutech-integrasi.com/profile', {[m
             headers: { Authorization: `Bearer ${token}` },[m
         });[m
         const data = await response.json();[m
[36m@@ -38,7 +37,7 @@[m [mconst Profile = () => {[m
     const handleSave = async () => {[m
         const token = localStorage.getItem('token');[m
         try {[m
[31m-            const response = await fetch(`${process.env.REACT_APP_API_URL}/profile/update`, {[m
[32m+[m[32m            const response = await fetch('https://take-home-test-api.nutech-integrasi.com/profile/update', {[m
                 method: 'PUT',[m
                 headers: {[m
                     'Content-Type': 'application/json',[m
[36m@@ -142,7 +141,7 @@[m [mconst Profile = () => {[m
                     const formData = new FormData();[m
                     formData.append('file', file);[m
 [m
[31m-                    const response = await fetch(`${process.env.REACT_APP_API_URL}/profile/image`, {[m
[32m+[m[32m                    const response = await fetch('https://take-home-test-api.nutech-integrasi.com/profile/image', {[m
                         method: 'PUT',[m
                         headers: {[m
                             Authorization: `Bearer ${token}`,[m
[36m@@ -187,7 +186,7 @@[m [mconst Profile = () => {[m
                     />[m
                     <label role='button' htmlFor="file-upload" className="position-absolute" style={{ bottom: '10px', right: '10px' }}>[m
                         <i className="bi bi-pencil-fill border border-1 border-black" style={{ fontSize: '16px', backgroundColor: 'white', padding: '5px 7.5px', borderRadius: '50%' }}></i>[m
[31m-                        <form action={`${process.env.REACT_APP_API_URL}/profile/update`} method="put">[m
[32m+[m[32m                        <form action={'https://take-home-test-api.nutech-integrasi.com/profile/update'} method="put">[m
                             <input[m
                                 name='foto_profile'[m
                                 id="file-upload"[m
[1mdiff --git a/src/layouts/auth/TopUp.js b/src/layouts/auth/TopUp.js[m
[1mindex affb085..a40434c 100644[m
[1m--- a/src/layouts/auth/TopUp.js[m
[1m+++ b/src/layouts/auth/TopUp.js[m
[36m@@ -1,4 +1,3 @@[m
[31m-// src/components/TopUp.js[m
 import React, { useState } from 'react';[m
 import Saldo from '../components/Saldo';[m
 import Swal from 'sweetalert2';[m
[36m@@ -48,7 +47,7 @@[m [mconst TopUp = () => {[m
         const token = localStorage.getItem('token');[m
 [m
         try {[m
[31m-            const response = await fetch(`${process.env.REACT_APP_API_URL}/topup`, {[m
[32m+[m[32m            const response = await fetch('https://take-home-test-api.nutech-integrasi.com/topup', {[m
                 method: 'POST',[m
                 headers: {[m
                     'Content-Type': 'application/json',[m
[36m@@ -57,7 +56,6 @@[m [mconst TopUp = () => {[m
                 body: JSON.stringify({ top_up_amount: amount }),[m
             });[m
 [m
[31m-            // const data = await response.json();[m
             if (response.ok) {[m
                 Swal.fire({[m
                     icon: "success",[m
[1mdiff --git a/src/layouts/auth/Transactions.js b/src/layouts/auth/Transactions.js[m
[1mindex daa21a3..ae61121 100644[m
[1m--- a/src/layouts/auth/Transactions.js[m
[1m+++ b/src/layouts/auth/Transactions.js[m
[36m@@ -1,4 +1,3 @@[m
[31m-// src/components/Transactions.js[m
 import React, { useEffect, useState } from 'react';[m
 import { format } from 'date-fns';[m
 import Saldo from '../components/Saldo';[m
[36m@@ -13,7 +12,7 @@[m [mconst Transactions = () => {[m
         try {[m
             setLimit(limit)[m
             const token = localStorage.getItem('token');[m
[31m-            const response = await fetch(`${process.env.REACT_APP_API_URL}/transaction/history?offset=0&limit=${limit}`, {[m
[32m+[m[32m            const response = await fetch('https://take-home-test-api.nutech-integrasi.com/transaction/history?offset=0&limit=25', {[m
                 headers: { Authorization: `Bearer ${token}` },[m
             });[m
 [m
[1mdiff --git a/src/layouts/components/Navbar.js b/src/layouts/components/Navbar.js[m
[1mindex cc15839..29635bc 100644[m
[1m--- a/src/layouts/components/Navbar.js[m
[1m+++ b/src/layouts/components/Navbar.js[m
[36m@@ -1,4 +1,3 @@[m
[31m-// src/components/Navbar.js[m
 import React from 'react';[m
 import { Link, useLocation } from 'react-router-dom';[m
 [m
[1mdiff --git a/src/layouts/components/Saldo.js b/src/layouts/components/Saldo.js[m
[1mindex 1b764c7..6c09ebc 100644[m
[1m--- a/src/layouts/components/Saldo.js[m
[1m+++ b/src/layouts/components/Saldo.js[m
[36m@@ -1,4 +1,3 @@[m
[31m-// src/layouts/components/Saldo.js[m
 import React, { useEffect } from 'react';[m
 import { formatAngka } from '../../utils/formatAngka';[m
 import { useDispatch, useSelector } from 'react-redux';[m
[1mdiff --git a/src/layouts/guest/LoginForm.js b/src/layouts/guest/LoginForm.js[m
[1mindex a2065ab..3ea5449 100644[m
[1m--- a/src/layouts/guest/LoginForm.js[m
[1m+++ b/src/layouts/guest/LoginForm.js[m
[36m@@ -1,4 +1,3 @@[m
[31m-// src/components/LoginForm.js[m
 import React, { useState } from 'react';[m
 import { useDispatch, useSelector } from 'react-redux';[m
 import { setError } from '../../redux/slices/userSlice';[m
[1mdiff --git a/src/layouts/guest/RegistrationForm.js b/src/layouts/guest/RegistrationForm.js[m
[1mindex d2d8343..3ec48b9 100644[m
[1m--- a/src/layouts/guest/RegistrationForm.js[m
[1m+++ b/src/layouts/guest/RegistrationForm.js[m
[36m@@ -1,4 +1,3 @@[m
[31m-// src/components/RegistrationForm.js[m
 import React, { useState } from 'react';[m
 import { useDispatch, useSelector } from 'react-redux';[m
 import { registerUser, setError } from '../../redux/slices/userSlice';[m
[1mdiff --git a/src/logo.svg b/src/logo.svg[m
[1mdeleted file mode 100644[m
[1mindex 9dfc1c0..0000000[m
[1m--- a/src/logo.svg[m
[1m+++ /dev/null[m
[36m@@ -1 +0,0 @@[m
[31m-<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 841.9 595.3"><g fill="#61DAFB"><path d="M666.3 296.5c0-32.5-40.7-63.3-103.1-82.4 14.4-63.6 8-114.2-20.2-130.4-6.5-3.8-14.1-5.6-22.4-5.6v22.3c4.6 0 8.3.9 11.4 2.6 13.6 7.8 19.5 37.5 14.9 75.7-1.1 9.4-2.9 19.3-5.1 29.4-19.6-4.8-41-8.5-63.5-10.9-13.5-18.5-27.5-35.3-41.6-50 32.6-30.3 63.2-46.9 84-46.9V78c-27.5 0-63.5 19.6-99.9 53.6-36.4-33.8-72.4-53.2-99.9-53.2v22.3c20.7 0 51.4 16.5 84 46.6-14 14.7-28 31.4-41.3 49.9-22.6 2.4-44 6.1-63.6 11-2.3-10-4-19.7-5.2-29-4.7-38.2 1.1-67.9 14.6-75.8 3-1.8 6.9-2.6 11.5-2.6V78.5c-8.4 0-16 1.8-22.6 5.6-28.1 16.2-34.4 66.7-19.9 130.1-62.2 19.2-102.7 49.9-102.7 82.3 0 32.5 40.7 63.3 103.1 82.4-14.4 63.6-8 114.2 20.2 130.4 6.5 3.8 14.1 5.6 22.5 5.6 27.5 0 63.5-19.6 99.9-53.6 36.4 33.8 72.4 53.2 99.9 53.2 8.4 0 16-1.8 22.6-5.6 28.1-16.2 34.4-66.7 19.9-130.1 62-19.1 102.5-49.9 102.5-82.3zm-130.2-66.7c-3.7 12.9-8.3 26.2-13.5 39.5-4.1-8-8.4-16-13.1-24-4.6-8-9.5-15.8-14.4-23.4 14.2 2.1 27.9 4.7 41 7.9zm-45.8 106.5c-7.8 13.5-15.8 26.3-24.1 38.2-14.9 1.3-30 2-45.2 2-15.1 0-30.2-.7-45-1.9-8.3-11.9-16.4-24.6-24.2-38-7.6-13.1-14.5-26.4-20.8-39.8 6.2-13.4 13.2-26.8 20.7-39.9 7.8-13.5 15.8-26.3 24.1-38.2 14.9-1.3 30-2 45.2-2 15.1 0 30.2.7 45 1.9 8.3 11.9 16.4 24.6 24.2 38 7.6 13.1 14.5 26.4 20.8 39.8-6.3 13.4-13.2 26.8-20.7 39.9zm32.3-13c5.4 13.4 10 26.8 13.8 39.8-13.1 3.2-26.9 5.9-41.2 8 4.9-7.7 9.8-15.6 14.4-23.7 4.6-8 8.9-16.1 13-24.1zM421.2 430c-9.3-9.6-18.6-20.3-27.8-32 9 .4 18.2.7 27.5.7 9.4 0 18.7-.2 27.8-.7-9 11.7-18.3 22.4-27.5 32zm-74.4-58.9c-14.2-2.1-27.9-4.7-41-7.9 3.7-12.9 8.3-26.2 13.5-39.5 4.1 8 8.4 16 13.1 24 4.7 8 9.5 15.8 14.4 23.4zM420.7 163c9.3 9.6 18.6 20.3 27.8 32-9-.4-18.2-.7-27.5-.7-9.4 0-18.7.2-27.8.7 9-11.7 18.3-22.4 27.5-32zm-74 58.9c-4.9 7.7-9.8 15.6-14.4 23.7-4.6 8-8.9 16-13 24-5.4-13.4-10-26.8-13.8-39.8 13.1-3.1 26.9-5.8 41.2-7.9zm-90.5 125.2c-35.4-15.1-58.3-34.9-58.3-50.6 0-15.7 22.9-35.6 58.3-50.6 8.6-3.7 18-7 27.7-10.1 5.7 19.6 13.2 40 22.5 60.9-9.2 20.8-16.6 41.1-22.2 60.6-9.9-3.1-19.3-6.5-28-10.2zM310 490c-13.6-7.8-19.5-37.5-14.9-75.7 1.1-9.4 2.9-19.3 5.1-29.4 19.6 4.8 41 8.5 63.5 10.9 13.5 18.5 27.5 35.3 41.6 50-32.6 30.3-63.2 46.9-84 46.9-4.5-.1-8.3-1-11.3-2.7zm237.2-76.2c4.7 38.2-1.1 67.9-14.6 75.8-3 1.8-6.9 2.6-11.5 2.6-20.7 0-51.4-16.5-84-46.6 14-14.7 28-31.4 41.3-49.9 22.6-2.4 44-6.1 63.6-11 2.3 10.1 4.1 19.8 5.2 29.1zm38.5-66.7c-8.6 3.7-18 7-27.7 10.1-5.7-19.6-13.2-40-22.5-60.9 9.2-20.8 16.6-41.1 22.2-60.6 9.9 3.1 19.3 6.5 28.1 10.2 35.4 15.1 58.3 34.9 58.3 50.6-.1 15.7-23 35.6-58.4 50.6zM320.8 78.4z"/><circle cx="420.9" cy="296.5" r="45.7"/><path d="M520.5 78.1z"/></g></svg>[m
\ No newline at end of file[m
[1mdiff --git a/src/redux/slices/balanceSlice.js b/src/redux/slices/balanceSlice.js[m
[1mindex 102fddd..ae511d1 100644[m
[1m--- a/src/redux/slices/balanceSlice.js[m
[1m+++ b/src/redux/slices/balanceSlice.js[m
[36m@@ -1,4 +1,3 @@[m
[31m-// src/redux/slices/balanceSlice.js[m
 import { createSlice } from '@reduxjs/toolkit';[m
 [m
 const balanceSlice = createSlice({[m
[1mdiff --git a/src/redux/slices/bannerSlice.js b/src/redux/slices/bannerSlice.js[m
[1mindex a2f4240..957bea8 100644[m
[1m--- a/src/redux/slices/bannerSlice.js[m
[1m+++ b/src/redux/slices/bannerSlice.js[m
[36m@@ -1,6 +1,5 @@[m
 import { createSlice, createAsyncThunk } from '@reduxjs/toolkit';[m
 [m
[31m-// Definisikan thunk[m
 const fetchBannerData = createAsyncThunk([m
     'user/fetchBannerData',[m
     async () => {[m
[36m@@ -8,10 +7,10 @@[m [mconst fetchBannerData = createAsyncThunk([m
             const token = localStorage.getItem('token');[m
             const headers = { Authorization: `Bearer ${token}` };[m
 [m
[31m-            const profileResponse = await fetch(`${process.env.REACT_APP_API_URL}/profile`, { headers });[m
[32m+[m[32m            const profileResponse = await fetch('https://take-home-test-api.nutech-integrasi.com/profile', { headers });[m
             const profileData = await profileResponse.json();[m
 [m
[31m-            const balanceResponse = await fetch(`${process.env.REACT_APP_API_URL}/balance`, { headers });[m
[32m+[m[32m            const balanceResponse = await fetch('https://take-home-test-api.nutech-integrasi.com/balance', { headers });[m
             const balanceData = await balanceResponse.json();[m
 [m
             return {[m
[36m@@ -20,12 +19,11 @@[m [mconst fetchBannerData = createAsyncThunk([m
             };[m
         } catch (error) {[m
             console.error('Error fetching user data:', error);[m
[31m-            throw error; // Lempar error agar bisa ditangani di reducer[m
[32m+[m[32m            throw error;[m
         }[m
     }[m
 );[m
 [m
[31m-// Buat slice[m
 const bannerSlice = createSlice({[m
     name: 'user',[m
     initialState: {[m
[36m@@ -46,6 +44,5 @@[m [mconst bannerSlice = createSlice({[m
     },[m
 });[m
 [m
[31m-// Ekspor reducer dan thunk[m
 export default bannerSlice.reducer;[m
[31m-export { fetchBannerData }; // Pastikan hanya ada satu ekspor di sini[m
[32m+[m[32mexport { fetchBannerData };[m
[1mdiff --git a/src/redux/slices/index.js b/src/redux/slices/index.js[m
[1mindex d2d78fc..501f18e 100644[m
[1m--- a/src/redux/slices/index.js[m
[1m+++ b/src/redux/slices/index.js[m
[36m@@ -1,4 +1,3 @@[m
[31m-// src/redux/slices/index.js[m
 import { combineReducers } from 'redux';[m
 import reducer from './slice';[m
 [m
[1mdiff --git a/src/redux/store.js b/src/redux/store.js[m
[1mindex 9faec13..bae97b3 100644[m
[1m--- a/src/redux/store.js[m
[1m+++ b/src/redux/store.js[m
[36m@@ -1,4 +1,3 @@[m
[31m-// src/redux/store.js[m
 import { configureStore } from '@reduxjs/toolkit';[m
 import userReducer from './