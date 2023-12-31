import client from './client';
import { AxiosResponse } from 'axios';

//메인
export const getTopInfo = (): Promise<AxiosResponse> => {
  return client.get('/admin/topInfo');
};

export const getVisitor = (): Promise<AxiosResponse> => {
  return client.get('/admin/visitor');
};

export const getWeekRegister = (): Promise<AxiosResponse> => {
  return client.get('/admin/weekRegister');
};

export const getMessages = (): Promise<AxiosResponse> => {
  return client.get('/admin/getMessages');
};

export const postMessages = (
  text: string,
  userNum: number
): Promise<AxiosResponse> => {
  return client.post('/admin/postMessages', { text, userNum });
};

export const deleteMessages = (messageNum: number): Promise<AxiosResponse> => {
  return client.post(`/admin/postDelete/${messageNum}`);
};

//캐러셀관리
export const getCarousel = (): Promise<AxiosResponse> => {
  return client.get('/admin/getCarousel');
};

export const deleteCarousel = (carouselNum: number): Promise<AxiosResponse> => {
  return client.delete(`/admin/deleteCarousel/${carouselNum}`);
};

//유저관리

export const deleteUser = (userNum: number): Promise<AxiosResponse> => {
  return client.delete(`/admin/deleteUser/${userNum}`);
};

export const updateUserGrade = (
  userNum: number,
  grade: number
): Promise<AxiosResponse> => {
  return client.post('/admin/updateUserGrade', { userNum, grade });
};

export const getUserDetail = (userNum: number): Promise<AxiosResponse> => {
  return client.get(`/admin/getUserDetail/${userNum}`);
};

export const getUserChart = (): Promise<AxiosResponse> => {
  return client.get('/admin/getUserChart/grade');
};

export const getUserChartgender = (): Promise<AxiosResponse> => {
  return client.get('/admin/getUserChart/gender');
};

export const getUserChartage = (): Promise<AxiosResponse> => {
  return client.get('/admin/getUserChart/age');
};

export const getUserMonthChart = (): Promise<AxiosResponse> => {
  return client.get('/admin/getUserChart/month');
};

export const getUserDayChart = (): Promise<AxiosResponse> => {
  return client.get('/admin/getUserChart/day');
};

// 모임게시판관리

export const getRegister = (): Promise<AxiosResponse> => {
  return client.get('/admin/getRegister');
};

export const getRegisterChart = (): Promise<AxiosResponse> => {
  return client.get('/admin/getRegisterChart/category');
};

export const getRegisterMonthChart = (): Promise<AxiosResponse> => {
  return client.get('/admin/getRegisterChart/month');
};
export const getRegisterDayChart = (): Promise<AxiosResponse> => {
  return client.get('/admin/getRegisterChart/day');
};
export const getRegisterTable = (): Promise<AxiosResponse> => {
  return client.get('/admin/getRegisterChart/table');
};

// 커뮤니티게시판 관리

export const getCommunityWithUser = (): Promise<AxiosResponse> => {
  return client.get('/admin/getCommunity');
};
export const getCommunityChart = (): Promise<AxiosResponse> => {
  return client.get('/admin/getCommunityChart/category');
};
export const getCommunityMonthChart = (): Promise<AxiosResponse> => {
  return client.get('/admin/getCommunityChart/month');
};
export const getCommunityDayChart = (): Promise<AxiosResponse> => {
  return client.get('/admin/getCommunityChart/day');
};
export const getCommunityTable = (): Promise<AxiosResponse> => {
  return client.get('/admin/getCommunityChart/table');
};
