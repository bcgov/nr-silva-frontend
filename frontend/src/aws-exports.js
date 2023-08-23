import { env } from './env';

const redirect_url = env.REACT_APP_URL || "http://localhost:3000";
    
const awsconfig = {
    aws_cognito_region: env.REACT_APP_COGNITO_REGION,
    aws_user_pools_id: env.REACT_APP_USER_POOLS_ID,
    aws_user_pools_web_client_id: env.REACT_APP_USER_POOLS_WEB_CLIENT_ID,
    aws_mandatory_sign_in: 'enable',
    oauth: {
        domain: env.REACT_APP_AWS_DOMAIN,
        scope: ['openid'],
        redirectSignIn: `${redirect_url}/dashboard`,
        redirectSignOut: `${redirect_url}`,
        responseType: 'code',
    },
    federationTarget: 'COGNITO_USER_POOLS',
};

export default awsconfig;
