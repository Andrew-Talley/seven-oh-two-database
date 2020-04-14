import * as React from 'react';
import { Input } from 'reactstrap';

export const SearchBar = (props: any) => {
  const [input, setInput] = React.useState('');
  React.useEffect(() => {
    props.onSearch(input);
  });

  return (
    <Input
      placeholder={props.placeholder}
      value={input}
      onChange={e => {
        setInput(e.target.value)
      }}
    />
  )
}