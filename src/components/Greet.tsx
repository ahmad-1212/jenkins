const Greet = ({ name }: { name?: string }) => {
  return (
    <>
      <div>Hello {name ? name : "Guest"}</div>
      <button></button>
    </>
  );
};

export default Greet;
