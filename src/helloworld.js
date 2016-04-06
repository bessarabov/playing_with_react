
var HelloMessage = React.createClass({
  render: function() {
    return <div>Hello {this.props.name}</div>;
  }
});

ReactDOM.render(

  <div>
      <h1>Hello, world!</h1>
      <HelloMessage name="John" foo="bar" />
  </div>

  , document.getElementById('example')
);
