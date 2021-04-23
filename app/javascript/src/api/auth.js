import api, { csrf } from './init'


export function isSignedIn() {
  return api.get("/api/auth/is_signed_in")
  .then((res) => res.data)
}

export function signIn(data) {
  csrf()
  return api.post("/employees/sign_in", data)
  .then((res) => res.data)
}

export function signOut() {
  csrf()
  return api.delete("/employees/sign_out")
  .then((res) => res.data)
}

export function signUp(data) {
  csrf()
  return api.post("/employees", data)
  .then((res) => res.data)
}