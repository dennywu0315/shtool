#!/usr/bin/perl

use LWP::UserAgent;
use HTTP::Cookies;
use HTTP::Headers;
use Data::Dumper;

$appkey='3431055205';
$appsecret='7d0865302cde96bce4cbbc1c6171ae4f';

my $ua = new LWP::UserAgent(keep_alive => 1);
$ua->timeout(5);
$ua->agent('Mozilla/4.0');
$ua->cookie_jar(HTTP::Cookies->new(file=>'getsina.cookies',autosave=>1));
 
my $res = $ua->post('https://api.weibo.com/oauth2/authorize?client_id=3431055205&redirect_uri=http%3A%2F%2Fwww.isciro.com&response_type=code&userID=13916231570&passwd=150700',
    [
        userID =>'xxxxxx',
        passwd =>'xxxxxx'
    ],
);

die Dumper $res;

if (!$res->is_success) {
    print STDERR $res->status_line, "\n";
}

my $req = HTTP::Request->new(GET => 'http://t.sina.com.cn/pub/tags');
$req->content_type('application/x-www-form-urlencoded');
$res = $ua->request($req);
print $res->as_string;

exit(0);
