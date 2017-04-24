require 'spec_helper'
require 'haml'

describe 'pugin/components/_menu.haml', type: :view do

  it 'renders as expected' do
    render

    expect(response).to eq(<<DATA
<nav aria-label='navigation' class='nav' role='navigation'>
<div class='container'>
<ul>
<li>
<a href='/houses/4b77dd58-f6ba-4121-b521-c8ad70465f52/members/current/a-z/a'>MPs</a>
</li>
<li>
<a href='/houses/f1a325bf-f550-48a5-ad40-e30cb7b7bdf4/members/current/a-z/a'>Lords</a>
</li>
<li>
<a href='/houses/4b77dd58-f6ba-4121-b521-c8ad70465f52/parties/current'>Parties</a>
</li>
<li>
<a href='/constituencies/current/a-z/a'>Constituencies</a>
</li>
</ul>
</div>
</nav>
DATA
    )
  end

end
