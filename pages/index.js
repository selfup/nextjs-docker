import Link from 'next/link';

export default () => (
  <div>
    <h1>Welcome to a next.js docker boilerplate!</h1>
    <Link prefetch href="/about">
      <button>About</button>
    </Link>
  </div>
);
