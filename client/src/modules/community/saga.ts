import {
  ADD_FAVORITE_POST,
  GET_POPULAR_POSTS,
  GET_POST,
  GET_POSTS,
  SAVE_FORM,
} from "./action";
import * as communityAPI from "../../lib/api/community";
import { takeLatest } from "redux-saga/effects";
import createRequestSaga from "../../lib/createRequestSaga";

const saveFormSaga = createRequestSaga(
  SAVE_FORM,
  communityAPI.createCommunityPost
);

const getCommunityPostsSaga = createRequestSaga(
  GET_POSTS,
  communityAPI.getCommunityPosts
);

const getPopularPostsSaga = createRequestSaga(
  GET_POPULAR_POSTS,
  communityAPI.getPopularPosts
);

const getPostSaga = createRequestSaga(GET_POST, communityAPI.getPost);

const addFavoriteCommunityPostsSaga = createRequestSaga(
  ADD_FAVORITE_POST,
  communityAPI.addFavoritePost
);

export function* CommunitySaga() {
  yield takeLatest(GET_POSTS, getCommunityPostsSaga);
  yield takeLatest(SAVE_FORM, saveFormSaga);
  yield takeLatest(ADD_FAVORITE_POST, addFavoriteCommunityPostsSaga);
  yield takeLatest(GET_POST, getPostSaga);
  yield takeLatest(GET_POPULAR_POSTS, getPopularPostsSaga);
}