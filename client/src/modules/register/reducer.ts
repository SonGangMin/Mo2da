import {
  RegisterState,
  RegisterAction,
  ListDetailType,
  OriginalFormType,
  OriginalCommentType,
} from './type';
import {
  CHANGE_DETAIL_SORT_FORM,
  CHANGE_FORM,
  CHANGE_SORT_FORM,
  GET_LIST,
  GET_POPULAR_LIST,
  INIT_SORT,
  POST_FORM,
  UNLOAD_FORM,
  GET_FORM,
  POST_CLOSE,
  POST_DELETE,
  CHANGE_COMMENT,
  POST_COMMENT,
  CHANGE_RECRUIT,
  GET_COMMENT,
  UNLOAD_COMMENT,
  GET_ORIGINAL_FORM,
  MODIFY_FORM,
  MODIFY_FORM_SUCCESS,
  MODIFY_FORM_FAILURE,
  GET_ORIGINAL_COMMENT,
} from './action';

const initialState: RegisterState = {
  form: {
    title: '',
    category: '',
    personnel: 0,
    online: '',
    position: '',
    contact: '',
    period: '',
    content: '',
    originalPostId: NaN,
  },
  list: {
    popularList: [],
    sort: {
      mainSort: '전체',
      detailSort: {
        time: '',
        view: '',
        like: '',
      },
      search: '',
      recruit: true,
    },
    mainList: null,
  },
  register: null,
  formData: {},
  registerComment: {
    comment: '',
  },
};

const register = (
  state: RegisterState = initialState,
  action: RegisterAction
): RegisterState => {
  switch (action.type) {
    case UNLOAD_FORM:
      return initialState;
    case INIT_SORT:
      return {
        ...state,
        list: {
          ...state.list,
          sort: {
            ...state.list.sort,
            detailSort: {
              time: '',
              view: '',
              like: '',
            },
          },
        },
      };
    case CHANGE_FORM:
      if ('key' in action.payload && 'value' in action.payload) {
        return {
          ...state,
          form: {
            ...state.form,
            [action.payload.key]: action.payload.value,
          },
        };
      }
      return state;
    case CHANGE_SORT_FORM:
      if ('key' in action.payload && 'value' in action.payload) {
        return {
          ...state,
          list: {
            ...state.list,
            sort: {
              ...state.list.sort,
              [action.payload.key]: action.payload.value,
            },
          },
        };
      }
      return state;
    case CHANGE_DETAIL_SORT_FORM:
      if ('key' in action.payload && 'value' in action.payload) {
        return {
          ...state,
          list: {
            ...state.list,
            sort: {
              ...state.list.sort,
              detailSort: {
                ...state.list.sort.detailSort,
                [action.payload.key]: action.payload.value,
              },
            },
          },
        };
      }
      return state;
    case CHANGE_RECRUIT:
      return {
        ...state,
        list: {
          ...state.list,
          sort: {
            ...state.list.sort,
            recruit: !state.list.sort.recruit,
          },
        },
      };
    case `${POST_FORM}_SUCCESS`:
      return {
        ...state,
        form: {
          ...state.form,
        },
      };
    case `${POST_FORM}_FAILURE`:
      return state;
    case `${GET_LIST}_SUCCESS`:
      return {
        ...state,
        list: {
          ...state.list,
          mainList: action.payload,
        },
      };
    case `${GET_LIST}_FAILURE`:
      return {
        ...state,
        list: {
          ...state.list,
          mainList: null,
        },
      };
    case `${GET_POPULAR_LIST}_SUCCESS`:
      return {
        ...state,
        list: {
          ...state.list,
          popularList: action.payload as ListDetailType[],
        },
      };
    case `${GET_POPULAR_LIST}_FAILURE`:
      return {
        ...state,
        list: {
          ...state.list,
          popularList: [],
        },
      };
    case `${GET_FORM}_SUCCESS`:
      return {
        ...state,
        formData: action.payload,
      };
    case `${GET_FORM}_FAILURE`:
      return state;
    case `${POST_CLOSE}_SUCCESS`:
      return {
        ...state,
      };
    case `${POST_CLOSE}_FAILURE`:
      return state;
    case `${POST_DELETE}_SUCCESS`:
      return {
        ...state,
      };
    case `${POST_DELETE}_FAILURE`:
      return state;
    case CHANGE_COMMENT:
      if ('key' in action.payload && 'value' in action.payload) {
        return {
          ...state,
          registerComment: {
            ...state.registerComment,
            [action.payload.key]: action.payload.value,
          },
        };
      }
      return state;
    case `${POST_COMMENT}_SUCCESS`:
      return {
        ...state,
      };
    case `${POST_COMMENT}_FAILURE`:
      return state;
    case UNLOAD_COMMENT:
      return {
        ...state,
        registerComment: initialState.registerComment,
      };
    case GET_ORIGINAL_FORM:
      const originalForm: OriginalFormType = action.payload as OriginalFormType;
      return {
        ...state,
        form: {
          ...state.form,
          title: originalForm.originFormData.title,
          category: originalForm.originFormData.category,
          personnel: originalForm.originFormData.personnel,
          online: originalForm.originFormData.meeting,
          position: originalForm.originFormData.position,
          contact: originalForm.originFormData.contact,
          period: originalForm.originFormData.period,
          content: originalForm.originFormData.content,
          originalPostId: originalForm.originFormData.registerNum,
        },
      };
    case MODIFY_FORM_SUCCESS:
      return {
        ...state,
        form: {
          ...state.form,
        },
      };
    case MODIFY_FORM_FAILURE:
      return state;
    case GET_ORIGINAL_COMMENT:
      const originalComment: OriginalCommentType =
        action.payload as OriginalCommentType;
      return {
        ...state,
        registerComment: {
          ...state.registerComment,
          comment: originalComment.commentItem.comment,
        },
      };
    default:
      return state;
  }
};

export default register;
