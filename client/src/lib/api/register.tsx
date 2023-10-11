import client from "./client";
import { AxiosResponse } from "axios";
import { GetListType, RegisterState } from "../../modules/register/type";

export const registerForm = ({
  form,
}: RegisterState): Promise<AxiosResponse> => {
  return client.post("/register", form);
};

export const getList = (data: GetListType): Promise<AxiosResponse> => {
  return client.get("/register/list", { params: data });
};

export const getPopularList = (): Promise<AxiosResponse> => {
  console.log("API의 getPopularList");
  return client.get("/register/popularList");
};

export const getForm = (postId: Number): Promise<AxiosResponse> => {
  console.log('postid????', postId);
  return client.get("/register/post/:postId", {params: postId});
};