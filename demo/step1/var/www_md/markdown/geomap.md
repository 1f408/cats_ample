# GeoMap拡張
## GeoJSON形式
```` md
``` geojson
{
  "type": "FeatureCollection",
  "features": [
    {
      "type": "Feature",
      "geometry": {
        "type": "Polygon",
        "coordinates": [
          [
            [139.74381, 35.69941],
            [139.74325, 35.69885],
            [139.74376, 35.69858],
            [139.74438, 35.69908]
          ]
        ]
      }
    },
    {
      "type": "Feature",
      "geometry": {
        "type": "Point",
        "coordinates": [139.74387, 35.69895]
      }
    }
  ]
}
```
````

``` geojson
{
  "type": "FeatureCollection",
  "features": [
    {
      "type": "Feature",
      "geometry": {
        "type": "Polygon",
        "coordinates": [
          [
            [139.74381, 35.69941],
            [139.74325, 35.69885],
            [139.74376, 35.69858],
            [139.74438, 35.69908]
          ]
        ]
      }
    },
    {
      "type": "Feature",
      "geometry": {
        "type": "Point",
        "coordinates": [139.74387, 35.69895]
      }
    }
  ]
}
```

[大きなGeoJSON例](big_geojson.md)

## TopoJSON形式
```` md
``` topojson
{
  "type": "Topology",
  "objects": {
    "test": {
      "type": "GeometryCollection",
      "geometries": [
        {
          "type": "Polygon",
          "arcs": [[0]]
        },
        {
          "type": "Point",
          "coordinates": [139.74387, 35.69895]
        }
      ]
    }
  },
  "arcs": [
    [
      [139.74381, 35.69941],
      [139.74325, 35.69885],
      [139.74376, 35.69858],
      [139.74438, 35.69908]
    ]
  ],
  "bbox": [
    139.74325,
    35.69858,
    139.74438,
    35.69941
  ]
}
```
````

``` topojson
{
  "type": "Topology",
  "objects": {
    "test": {
      "type": "GeometryCollection",
      "geometries": [
        {
          "type": "Polygon",
          "arcs": [[0]]
        },
        {
          "type": "Point",
          "coordinates": [139.74387, 35.69895]
        }
      ]
    }
  },
  "arcs": [
    [
      [139.74381, 35.69941],
      [139.74325, 35.69885],
      [139.74376, 35.69858],
      [139.74438, 35.69908]
    ]
  ],
  "bbox": [
    139.74325,
    35.69858,
    139.74438,
    35.69941
  ]
}
```

[大きなTopoJSON例](big_topojson.md)
