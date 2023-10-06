import { combineReducers } from "redux";

import { all } from "redux-saga/effects";
import register from "./register/reducer";
import { registerSaga } from "./register/saga";

const rootReducer = combineReducers({
  register,
});

export function* rootSaga() {
  yield all([registerSaga()]);
}
export default rootReducer;

export type RootState = ReturnType<typeof rootReducer>;