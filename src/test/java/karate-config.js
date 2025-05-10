function fn() {

var baseUrl = karate.properties['crud.url'] ;
  var env = karate.env || 'dev';
  karate.log('Running in env:', env);

  var config = {
    env: env,
    baseUrl: baseUrl,
    resources: {
      employee: 'employees'
    }
  };

  karate.log('Running tests in environment:', env);
  karate.log('Using baseUrl:', config.baseUrl);

  return config;
}
