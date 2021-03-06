use Rack::Static,
    urls: ['/'],
    root: './',
    index: 'index.html'

run lambda { |_|
  [
    200,
    {
      'Content-Type'  => 'text/html',
      'Cache-Control' => 'public, max-age=0'
    },
    File.open('index.html', File::RDONLY)
  ]
}
