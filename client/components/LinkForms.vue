<template>
  <div class="container bg-light p-2 shadow">
    <h3>Link {{ $attrs.action }}</h3>
    <form action="" method="post">
      <table>
        <tbody>
          <tr>
            <td>Url</td>
            <td><input id="" class="form-control form-control-sm" type="text" name=""></td>
          </tr>
          <tr>
            <td>Description</td>
            <td><textarea id="" class="form-control" name="" cols="30" rows="10" /></td>
          </tr>
          <tr>
            <td>
              <button class="btn btn-sm btn-primary">
                {{ $attrs.action }}
              </button>
            </td>
          </tr>
        </tbody>
      </table>
    </form>
  </div>
</template>
