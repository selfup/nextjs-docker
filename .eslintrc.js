module.exports = {
    'extends': 'airbnb',
    'plugins': [
        'html'
    ],
    'globals': {
        'document': true,
        'window': true,
    },
    'rules': {
        'react/jsx-filename-extension': ['error', { 'extensions': ['.js', '.jsx'] }],
        'react/react-in-jsx-scope': 0,
    },
};
