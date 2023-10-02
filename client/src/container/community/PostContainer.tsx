import React, { useCallback, useEffect } from "react";
import Post from "../../components/community/Post";
import { useDispatch, useSelector } from "react-redux";
import { RootState } from "../../modules";
import { getPost } from "../../modules/community/action";
import { useNavigate, useParams } from "react-router-dom";

const PostContainer = () => {
  const post = useSelector((state: RootState) => state.community.post);
  const dispatch = useDispatch();
  const navigate = useNavigate();
  const params = useParams();
  const postId = params.postId || "";

  const onClickBack = useCallback(() => {
    navigate(-1);
  }, [navigate]);

  useEffect(() => {
    dispatch(getPost(Number(postId)));
  }, [dispatch, postId]);

  return <Post post={post} onClickBack={onClickBack} />;
};

export default PostContainer;
