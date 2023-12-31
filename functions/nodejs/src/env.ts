import {
  // defineBoolean,
  // defineInt,
  // defineList,
  defineString,
} from 'firebase-functions/params';

export const NODE_ENV = defineString('NODE_ENV', {
  default: 'development',
  description: 'The environment in which the funtion is running.',
  input: {
    select: {
      options: [
        {
          value: 'development',
          label: 'Local Development',
        },
        {
          value: 'staging',
          label: 'Firebase Staging',
        },
        {
          value: 'production',
          label: 'Firebase Production',
        },
      ],
    },
  },
});

export const IMAGEKIT_PUBLIC_KEY = defineString('IMAGEKIT_PUBLIC_KEY', {
  description: 'The public key for the ImageKit account.',
  input: {
    text: {
      example: 'public_1234567890',
      validationRegex: /^public_\w{19}\W\w{7}=$/,
      validationErrorMessage: 'Please enter a valid public key',
    },
  },
});

export const IMAGEKIT_PRIVATE_KEY = defineString('IMAGEKIT_PRIVATE_KEY', {
  description: 'The private key for the ImageKit account.',
  input: {
    text: {
      example: 'private_1234567890',
      validationRegex: /^private_\w{19}\W\w{7}=$/,
      validationErrorMessage: 'Please enter a valid private key',
    },
  },
});

export const IMAGEKIT_URL_ENDPOINT = defineString('IMAGEKIT_URL_ENDPOINT', {
  description: 'The URL endpoint for the ImageKit account.',
  input: {
    text: {
      example: 'https://ik.imagekit.io/account-id',
      validationRegex: /^https:\/\/ik\.imagekit\.io\/\w{3,}$/,
      validationErrorMessage: 'Please enter a valid URL endpoint',
    },
  },
});

export const GAMES_MAIN_SOURCE_LINK = defineString('GAMES_MAIN_SOURCE_LINK', {
  description: 'The complete web address from which games are sourced.',
  input: {
    text: {
      example: 'itch.io',
      validationRegex:
        /^(?:([a-zA-Z0-9-]+?)\.)?([a-zA-Z0-9-]+?)\.([a-z]{2,}|[a-z]{2,5}\.[a-z]{2})$/,
      validationErrorMessage: 'Pease enter a valid address',
    },
  },
});

export const GAMES_MAIN_SOURCE_USERNAME = defineString(
  'GAMES_MAIN_SOURCE_USERNAME',
  {
    description: 'The username to authenticate the main games source',
  },
);

export const GAMES_MAIN_SOURCE_PASSWORD = defineString(
  'GAMES_MAIN_SOURCE_PASSWORD',
  {
    description: 'The password to authenticate the main games source',
  },
);
