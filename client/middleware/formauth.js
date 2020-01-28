export default function ({ store, redirect, route }) {
  const patern = new RegExp('new')
  if (store.state.userAuth !== 'staff' && store.state.userAuth !== 'admin') {
    return redirect('/')
  } else if (!patern.test(route.name) && store.state.userAuth !== 'admin') {
    return redirect('/')
  }
}
