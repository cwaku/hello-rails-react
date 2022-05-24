import { applyMiddleware, combineReducers } from 'redux';
import { legacy_createStore as createStore } from 'redux';
import thunk from 'redux-thunk';
import greetingsReducer from "./greetings"

const rootReducer = combineReducers({
    greeting: greetingsReducer,
});

const store = createStore(
    rootReducer,
    applyMiddleware(thunk)
);

export default store;