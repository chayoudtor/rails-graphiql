<template>
  <div class="container bg-light p-2 shadow">
    <h3>Product {{ $attrs.action }}</h3>
    <form action="" method="post">
      <table>
        <tbody>
          <tr>
            <td>Name</td>
            <td><input id="" class="form-control form-control-sm" type="text" name=""></td>
          </tr>
          <tr>
            <td>Descriptsion</td>
            <td><input id="" class="form-control form-control-sm" type="text" name=""></td>
          </tr>
          <tr>
            <td>Amount</td>
            <td><input id="" class="form-control form-control-sm" type="number" name=""></td>
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
