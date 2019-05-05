%include header title='Contact'
<div class="card">
    <div class="card-body">

    <h2 class="card-title">Contact Me</h2>
    <form method="post" action="/thankyou">
        <fieldset>
            <legend>SAMPLE FORM</legend>
            <ul>
                <li>First Name: <input name='first'>
                </li>
                <li>Last Name: <input name='last'>
                </li>
                <li>
                    Email Address: <input name="email">
                </li>
            </ul><input type='submit' value='Submit Form'>
        </fieldset>
    </form>

    <p>{{message}}</p>
    </div>
</div>

%include footer