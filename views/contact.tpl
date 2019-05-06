%include header title='Contact'
<div class="card">
    <div class="card-body">

    <h2 class="card-title">Contact Me</h2>
    <p>{{message}}</p>

    <form method="post" action="/thankyou">
        <fieldset>
            <table class="table">
                <tr>
                    <td>First Name</td>
                    <td><input name='first'></td>
                </tr>
                <tr>
                    <td>Last Name</td>
                    <td><input name='last'></td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td><input name='email'></td>
                </tr>
                <tr>
                    <td colspan="2"><input type='submit' value='Submit Form'></td>
                </tr>

            </table>
        </fieldset>
    </form>

    </div>
</div>

%include footer