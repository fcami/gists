
Compile using ./compile.sh

Test using:

```./test HTTPS_URL PATH_TO_CA_BUNDLE```

For instance, to use a very old, obsolete bundle:

```./test https://a.tile.openstreetmap.org/0/0/0.png bad_bundle/ca-bundle.crt```

To use a newer bundle:

```./test https://a.tile.openstreetmap.org/0/0/0.png good_bundle/ca-bundle.crt```

To use the default bundle:

```./test https://a.tile.openstreetmap.org/0/0/0.png default```


Output:
* if ca_bundle.crt is not present:

```* error setting certificate verify locations:  CAfile: ca-bundle.crt CApath: none```

* With ca_bundle.crt from the bad_bundle directory: 

```* SSL certificate problem: unable to get local issuer certificate```

* With ca_bundle.crt from the good_bundle directory:

```*  SSL certificate verify ok.```
