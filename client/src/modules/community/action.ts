import { CommunityState, GetPostType } from "./type";
import { createRequestActionTypes } from "../../lib/function/createRequestSaga";

// 액션 정의 (마지막에 as const 붙이기)
export const CHANGE_FORM = "community/CHANGE_FORM" as const;
export const CHANGE_SORT = "community/CHANGE_SORT_TYPE" as const;
export const CHANGE_DETAIL_SORT = "community/CHANGE_DETAIL_SORT" as const;
export const INIT_DETAIL_SORT = "community/INIT_DETAIL_SORT" as const;
export const INIT_FORM = "community/INIT_FORM" as const;
export const INIT_REPLY = "community/INIT_REPLY" as const;

export const [SAVE_FORM, SAVE_FORM_SUCCESS, SAVE_FORM_FAILURE] =
  createRequestActionTypes("community/SAVE_FORM");

export const [GET_POSTS, GET_POSTS_SUCCESS, GET_POSTS_FAILURE] =
  createRequestActionTypes("community/GET_POSTS");

export const [
  GET_POPULAR_POSTS,
  GET_POPULAR_POSTS_SUCCESS,
  GET_POPULAR_POSTS_FAILURE,
] = createRequestActionTypes("community/GET_POPULAR_POSTS");

export const [GET_POST, GET_POSTS_SUCCES, GET_POST_FAILURE] =
  createRequestActionTypes("community/GET_POST");

export const [GET_COMMENTS, GET_COMMENTS_SUCCES, GET_COMMENTS_FAILURE] =
  createRequestActionTypes("community/GET_COMMENTS");

export const [GET_REPLYS, GET_REPLYS_SUCCES, GET_REPLYS_FAILURE] =
  createRequestActionTypes("community/GET_REPLYS");

export const [ADD_COMMENT, ADD_COMMENT_SUCCES, ADD_COMMENT_FAILURE] =
  createRequestActionTypes("community/ADD_COMMENT");

export const [
  ADD_REPLY_COMMENT,
  ADD_REPLY_COMMENT_SUCCES,
  ADD_REPLY_COMMENT_FAILURE,
] = createRequestActionTypes("community/ADD_REPLY_COMMENT");

export const [
  ADD_FAVORITE_POST,
  ADD_FAVORITE_POST_SUCCESS,
  ADD_FAVORITE_POST_FAILURE,
] = createRequestActionTypes("community/ADD_FAVORITE_POST");

// 액션 생성 (매개 변수에 타입 넣어주기)
export const initForm = () => ({
  type: INIT_FORM,
  payload: {},
});

export const changeForm = ({
  name,
  key,
  value,
}: {
  name: string;
  key: string;
  value: string;
}) => ({
  type: CHANGE_FORM,
  payload: {
    name,
    key,
    value,
  },
});

export const changeSortType = ({
  key,
  value,
}: {
  key: string;
  value: string;
}) => ({
  type: CHANGE_SORT,
  payload: {
    key,
    value,
  },
});

export const changeDeailType = ({
  key,
  value,
}: {
  key: string;
  value: string;
}) => ({
  type: CHANGE_DETAIL_SORT,
  payload: {
    key,
    value,
  },
});

export const initDetail = () => ({
  type: INIT_DETAIL_SORT,
  payload: {},
});

export const initReply = () => ({ type: INIT_REPLY, payload: {} });

export const saveForm = (form: CommunityState) => ({
  type: SAVE_FORM,
  payload: {
    form,
  },
});

export const getPosts = (data: GetPostType) => ({
  type: GET_POSTS,
  payload: {
    data,
  },
});

export const getComments = (postId: number) => ({
  type: GET_COMMENTS,
  payload: {
    postId,
  },
});

export const getReplys = (postId: number) => ({
  type: GET_REPLYS,
  payload: {
    postId,
  },
});

export const getPopularPosts = () => ({
  type: GET_POPULAR_POSTS,
  payload: {},
});

export const getPost = (postId: number) => ({
  type: GET_POST,
  payload: {
    postId,
  },
});

export const addComment = (data: {
  userId: number;
  postId: number;
  comment: string;
}) => ({
  type: ADD_COMMENT,
  payload: {
    data,
  },
});

export const addReply = (data: {
  userId: number;
  postId: number;
  commentId: number;
  reply: string;
}) => ({
  type: ADD_REPLY_COMMENT,
  payload: {
    data,
  },
});

export const addFavorite = (postId: number) => ({
  type: ADD_FAVORITE_POST,
  payload: {
    postId,
  },
});
