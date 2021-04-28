import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Timeline 1.0
import "../../fonts"

Item {
    id: speed_dial_195_151
    width: 610
    height: 548
    property alias kphDisplay: kph_number_195_91.text
    property alias kplDisplay: kpl_number_195_93.text
    property alias kphFrame: kphTimeline.currentFrame

    Plex{
    }
    Cherry{
    }

    Exo{
    }



    Image {
        id: speed_dial_195_151Asset
        x: 161
        y: 153
        source: "assets/speed_dial_195_151.png"
    }

    Item {
        id: speed_numbers_195_116
        x: 0
        y: 0
        Text {
            id: kph_195_95
            x: 151
            y: 523
            color: "#FFFFFF"
            text: "0"
            font.weight: Font.Thin
            font.pixelSize: 29
            font.family: "Exo 2"
        }

        Text {
            id: kph_195_96
            x: 71
            y: 483
            color: "#FFFFFF"
            text: "100"
            font.weight: Font.Thin
            font.pixelSize: 29
            font.family: "Exo 2"
        }

        Text {
            id: kph_195_97
            x: 24
            y: 420
            color: "#FFFFFF"
            text: "200"
            font.weight: Font.Thin
            font.pixelSize: 29
            font.family: "Exo 2"
        }

        Text {
            id: kph_195_98
            x: -3
            y: 354
            color: "#FFFFFF"
            text: "300"
            font.weight: Font.Thin
            font.pixelSize: 29
            font.family: "Exo 2"
        }

        Text {
            id: kph_195_99
            x: -17
            y: 280
            color: "#FFFFFF"
            text: "400"
            font.weight: Font.Thin
            font.pixelSize: 29
            font.family: "Exo 2"
        }

        Text {
            id: kph_195_100
            x: -11
            y: 207
            color: "#FFFFFF"
            text: "500"
            font.weight: Font.Thin
            font.pixelSize: 29
            font.family: "Exo 2"
        }

        Text {
            id: kph_195_101
            x: 16
            y: 135
            color: "#CCCCCC"
            text: "600"
            font.weight: Font.Thin
            font.pixelSize: 29
            font.family: "Exo 2"
        }

        Text {
            id: kph_195_102
            x: 66
            y: 70
            color: "#FFFFFF"
            text: "700"
            font.weight: Font.Thin
            font.pixelSize: 29
            font.family: "Exo 2"
        }

        Text {
            id: kph_195_103
            x: 125
            y: 15
            color: "#FFFFFF"
            text: "800"
            font.weight: Font.Thin
            font.pixelSize: 29
            font.family: "Exo 2"
        }

        Text {
            id: kph_195_104
            x: 197
            y: -14
            color: "#FFFFFF"
            text: "900"
            font.weight: Font.Thin
            font.pixelSize: 29
            font.family: "Exo 2"
        }

        Text {
            id: kph_195_105
            x: 274
            y: -23
            color: "#FFFFFF"
            text: "1000"
            font.weight: Font.Thin
            font.pixelSize: 29
            font.family: "Exo 2"
        }

        Text {
            id: kph_195_106
            x: 364
            y: -11
            color: "#FFFFFF"
            text: "1100"
            font.weight: Font.Thin
            font.pixelSize: 29
            font.family: "Exo 2"
        }

        Text {
            id: kph_195_107
            x: 435
            y: 13
            color: "#FFFFFF"
            text: "1200"
            font.weight: Font.Thin
            font.pixelSize: 29
            font.family: "Exo 2"
        }

        Text {
            id: kph_195_108
            x: 495
            y: 62
            color: "#FFFFFF"
            text: "1300"
            font.weight: Font.Thin
            font.pixelSize: 29
            font.family: "Exo 2"
        }

        Text {
            id: kph_195_109
            x: 539
            y: 127
            color: "#FFFFFF"
            text: "1400"
            font.weight: Font.Thin
            font.pixelSize: 29
            font.family: "Exo 2"
        }

        Text {
            id: kph_195_110
            x: 562
            y: 196
            color: "#FFFFFF"
            text: "1500"
            font.weight: Font.Thin
            font.pixelSize: 29
            font.family: "Exo 2"
        }

        Text {
            id: kph_195_111
            x: 575
            y: 269
            color: "#FFFFFF"
            text: "1600"
            font.weight: Font.Thin
            font.pixelSize: 29
            font.family: "Exo 2"
        }

        Text {
            id: kph_195_112
            x: 569
            y: 352
            color: "#FFFFFF"
            text: "1700"
            font.weight: Font.Thin
            font.pixelSize: 29
            font.family: "Exo 2"
        }

        Text {
            id: kph_195_113
            x: 538
            y: 424
            color: "#FFFFFF"
            text: "1800"
            font.weight: Font.Thin
            font.pixelSize: 29
            font.family: "Exo 2"
        }

        Text {
            id: kph_195_114
            x: 494
            y: 485
            color: "#FFFFFF"
            text: "1900"
            font.weight: Font.Thin
            font.pixelSize: 29
            font.family: "Exo 2"
        }

        Text {
            id: kph_195_115
            x: 426
            y: 524
            color: "#FFFFFF"
            text: "2000"
            font.weight: Font.Thin
            font.pixelSize: 29
            font.family: "Exo 2"
        }
    }


    Item {
        id: speedometer_dots_195_141
        x: 54
        y: 45
        Image {
            id: dot_0_195_140
            x: 127
            y: 457
            source: "assets/dot_0_195_140.png"
        }

        Image {
            id: dot_10_195_125
            x: 73
            y: 422
            source: "assets/dot_10_195_125.png"
        }

        Image {
            id: dot_20_195_129
            x: 31
            y: 366
            source: "assets/dot_20_195_129.png"
        }

        Image {
            id: dot_30_195_132
            x: 8
            y: 310
            source: "assets/dot_30_195_132.png"
        }

        Image {
            id: dot_40_195_121
            x: -2
            y: 248
            source: "assets/dot_40_195_121.png"
        }

        Image {
            id: dot_50_195_135
            x: 6
            y: 182
            source: "assets/dot_50_195_135.png"
        }

        Image {
            id: dot_60_195_138
            x: 28
            y: 123
            source: "assets/dot_60_195_138.png"
        }

        Image {
            id: dot_70_195_123
            x: 68
            y: 72
            source: "assets/dot_70_195_123.png"
        }

        Image {
            id: dot_80_195_127
            x: 117
            y: 32
            height: 9
            source: "assets/dot_80_195_127.png"
        }

        Image {
            id: dot_90_195_131
            x: 176
            y: 8
            source: "assets/dot_90_195_131.png"
        }

        Image {
            id: dot_100_195_120
            x: 238
            y: 0
            source: "assets/dot_100_195_120.png"
        }

        Image {
            id: dot_110_195_134
            x: 303
            y: 8
            source: "assets/dot_110_195_134.png"
        }

        Image {
            id: dot_120_195_139
            x: 361
            y: 32
            source: "assets/dot_120_195_139.png"
        }

        Image {
            id: dot_130_195_126
            x: 412
            y: 70
            source: "assets/dot_130_195_126.png"
        }

        Image {
            id: dot_140_195_130
            x: 450
            y: 120
            source: "assets/dot_140_195_130.png"
        }

        Image {
            id: dot_150_195_133
            x: 474
            y: 178
            source: "assets/dot_150_195_133.png"
        }

        Image {
            id: dot_160_195_122
            x: 482
            y: 242
            source: "assets/dot_160_195_122.png"
        }

        Image {
            id: dot_170_195_136
            x: 475
            y: 307
            source: "assets/dot_170_195_136.png"
        }

        Image {
            id: dot_180_195_137
            x: 451
            y: 363
            source: "assets/dot_180_195_137.png"
        }

        Image {
            id: dot_190_195_124
            x: 412
            y: 415
            source: "assets/dot_190_195_124.png"
        }

        Image {
            id: dot_200_195_128
            x: 361
            y: 454
            source: "assets/dot_200_195_128.png"
        }
    }

    Image {
        id: sppedometer_outer_ring_195_86
        x: 41
        y: 34
        source: "assets/sppedometer_outer_ring_195_86.png"
    }

    Image {
        id: speedometer_track_bg_195_87
        x: 69
        y: 61
        source: "assets/speedometer_track_bg_195_87.png"
    }


    ArcItem {
        id: arc
        x: 76
        y: 71
        width: 445
        height: 442
        fillColor: "#00000000"
        rotation: -90
        strokeColor: "#4891d9"
        end: 239.7
        begin: -61.3
        strokeWidth: 45
    }

    Image {
        id: speedometer_needle_ring_195_90
        x: 153
        y: 145
        source: "assets/speedometer_needle_ring_195_90.png"
    }

    CustomTextField{
        id: kpl_number_195_93
        x: 192
        y: 315
        width: 219
        height: 57
        placeholderText: "Zadaj brzinu"
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 36
        font.family: "Cherry"
        Keys.onEnterPressed: {
            backend.setRefSpeed(kpl_number_195_93.text)
        }
        Keys.onReturnPressed: {
            backend.setRefSpeed(kpl_number_195_93.text)
        }
    }

    Item {
        id: item1
        x: 200
        y: 191
        width: 200
        height: 200

        Image {
            id: speedometer_needle_195_142
            x: 224
            y: -23
            source: "assets/speedometer_needle_195_142.png"
        }
    }

    Text {
        id: kpl_readout_195_118
        x: 270
        y: 363
        color: "#FFFFFF"
        text: "ref"
        font.weight: Font.ExtraLight
        font.pixelSize: 32
        font.family: "IBM Plex Mono"
    }

    Text {
        id: kph_number_195_91
        x: 187
        y: 201
        width: 230
        height: 98
        color: "#FFFFFF"
        text: "140"
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 72
        font.family: "Cherry"
    }

    Text {
        id: kph_readout_195_117
        x: 277
        y: 173
        color: "#FFFFFF"
        text: "rpm"
        font.weight: Font.ExtraLight
        font.pixelSize: 30
        font.family: "IBM Plex Mono"
    }



    Timeline {
        id: kphTimeline
        animations: [
            TimelineAnimation {
                id: timelineAnimation
                property: "currentFrame"
                loops: 1
                duration: 1000
                from: 0
                to: 1000
                running: false
            }
        ]
        enabled: true
        startFrame: 0
        endFrame: 200

        KeyframeGroup {
            target: item1
            property: "rotation"

            Keyframe {
                frame: 0
                value: -209.5
            }

            Keyframe {
                frame: 200
                value: 92.5
            }
        }

        KeyframeGroup {
            target: arc
            property: "end"

            Keyframe {
                frame: 0
                value: -61.3
            }

            Keyframe {
                frame: 200
                value: 240.2
            }

            Keyframe {
                frame: 10
                value: -46.45
            }

            Keyframe {
                frame: 30
                value: -16.13
            }

            Keyframe {
                frame: 40
                value: -0.78
            }

            Keyframe {
                frame: 50
                value: 14.55
            }

            Keyframe {
                frame: 70
                value: 44.77
            }

            Keyframe {
                frame: 80
                value: 59.96
            }

            Keyframe {
                frame: 190
                value: 225.12
            }
        }

        KeyframeGroup {
            target: kph_195_95
            property: "scale"

            Keyframe {
                frame: 0
                value: 1.2
            }

            Keyframe {
                frame: 2
                value: 1.2
            }

            Keyframe {
                frame: 4
                value: 1
            }
        }

        KeyframeGroup {
            target: kph_195_95
            property: "color"

            Keyframe {
                frame: 0
                value: "#5ca8ba"
            }

            Keyframe {
                frame: 2
                value: "#5ca8ba"
            }

            Keyframe {
                frame: 4
                value: "#ffffff"
            }
        }

        KeyframeGroup {
            target: kph_195_96
            property: "scale"
            Keyframe {
                frame: 9
                value: 1.2
            }

            Keyframe {
                frame: 11
                value: 1.2
            }

            Keyframe {
                frame: 7
                value: 1
            }

            Keyframe {
                frame: 13
                value: 1
            }
        }

        KeyframeGroup {
            target: kph_195_96
            property: "color"
            Keyframe {
                frame: 7
                value: "#ffffff"
            }

            Keyframe {
                frame: 9
                value: "#5ca8ba"
            }

            Keyframe {
                frame: 11
                value: "#5ca8ba"
            }

            Keyframe {
                frame: 13
                value: "#ffffff"
            }
        }

        KeyframeGroup {
            target: kph_195_97
            property: "scale"
            Keyframe {
                frame: 19
                value: 1.2
            }

            Keyframe {
                frame: 21
                value: 1.2
            }

            Keyframe {
                frame: 17
                value: 1
            }

            Keyframe {
                frame: 23
                value: 1
            }
        }

        KeyframeGroup {
            target: kph_195_97
            property: "color"
            Keyframe {
                frame: 17
                value: "#ffffff"
            }

            Keyframe {
                frame: 19
                value: "#5ca8ba"
            }

            Keyframe {
                frame: 21
                value: "#5ca8ba"
            }

            Keyframe {
                frame: 23
                value: "#ffffff"
            }
        }

        KeyframeGroup {
            target: kph_195_98
            property: "scale"
            Keyframe {
                frame: 29
                value: 1.2
            }

            Keyframe {
                frame: 31
                value: 1.2
            }

            Keyframe {
                frame: 27
                value: 1
            }

            Keyframe {
                frame: 33
                value: 1
            }
        }

        KeyframeGroup {
            target: kph_195_98
            property: "color"
            Keyframe {
                frame: 27
                value: "#ffffff"
            }

            Keyframe {
                frame: 29
                value: "#5ca8ba"
            }

            Keyframe {
                frame: 31
                value: "#5ca8ba"
            }

            Keyframe {
                frame: 33
                value: "#ffffff"
            }
        }

        KeyframeGroup {
            target: kph_195_99
            property: "scale"
            Keyframe {
                frame: 39
                value: 1.2
            }

            Keyframe {
                frame: 41
                value: 1.2
            }

            Keyframe {
                frame: 37
                value: 1
            }

            Keyframe {
                frame: 43
                value: 1
            }
        }

        KeyframeGroup {
            target: kph_195_99
            property: "color"
            Keyframe {
                frame: 37
                value: "#ffffff"
            }

            Keyframe {
                frame: 39
                value: "#5ca8ba"
            }

            Keyframe {
                frame: 41
                value: "#5ca8ba"
            }

            Keyframe {
                frame: 43
                value: "#ffffff"
            }
        }

        KeyframeGroup {
            target: kph_195_100
            property: "scale"
            Keyframe {
                frame: 49
                value: 1.2
            }

            Keyframe {
                frame: 51
                value: 1.2
            }

            Keyframe {
                frame: 47
                value: 1
            }

            Keyframe {
                frame: 53
                value: 1
            }
        }

        KeyframeGroup {
            target: kph_195_100
            property: "color"
            Keyframe {
                frame: 47
                value: "#ffffff"
            }

            Keyframe {
                frame: 49
                value: "#5ca8ba"
            }

            Keyframe {
                frame: 51
                value: "#5ca8ba"
            }

            Keyframe {
                frame: 53
                value: "#ffffff"
            }
        }

        KeyframeGroup {
            target: kph_195_101
            property: "scale"
            Keyframe {
                frame: 59
                value: 1.2
            }

            Keyframe {
                frame: 61
                value: 1.2
            }

            Keyframe {
                frame: 57
                value: 1
            }

            Keyframe {
                frame: 63
                value: 1
            }
        }

        KeyframeGroup {
            target: kph_195_101
            property: "color"
            Keyframe {
                frame: 57
                value: "#ffffff"
            }

            Keyframe {
                frame: 59
                value: "#5ca8ba"
            }

            Keyframe {
                frame: 61
                value: "#5ca8ba"
            }

            Keyframe {
                frame: 63
                value: "#ffffff"
            }
        }

        KeyframeGroup {
            target: kph_195_102
            property: "scale"
            Keyframe {
                frame: 68
                value: 1.2
            }

            Keyframe {
                frame: 70
                value: 1.2
            }

            Keyframe {
                frame: 66
                value: 1
            }

            Keyframe {
                frame: 72
                value: 1
            }
        }

        KeyframeGroup {
            target: kph_195_102
            property: "color"
            Keyframe {
                frame: 66
                value: "#ffffff"
            }

            Keyframe {
                frame: 68
                value: "#5ca8ba"
            }

            Keyframe {
                frame: 70
                value: "#5ca8ba"
            }

            Keyframe {
                frame: 72
                value: "#ffffff"
            }
        }

        KeyframeGroup {
            target: kph_195_103
            property: "scale"
            Keyframe {
                frame: 79
                value: 1.2
            }

            Keyframe {
                frame: 81
                value: 1.2
            }

            Keyframe {
                frame: 77
                value: 1
            }

            Keyframe {
                frame: 83
                value: 1
            }
        }

        KeyframeGroup {
            target: kph_195_103
            property: "color"
            Keyframe {
                frame: 77
                value: "#ffffff"
            }

            Keyframe {
                frame: 79
                value: "#5ca8ba"
            }

            Keyframe {
                frame: 81
                value: "#5ca8ba"
            }

            Keyframe {
                frame: 83
                value: "#ffffff"
            }
        }

        KeyframeGroup {
            target: kph_195_104
            property: "scale"
            Keyframe {
                frame: 89
                value: 1.2
            }

            Keyframe {
                frame: 91
                value: 1.2
            }

            Keyframe {
                frame: 87
                value: 1
            }

            Keyframe {
                frame: 93
                value: 1
            }
        }

        KeyframeGroup {
            target: kph_195_104
            property: "color"
            Keyframe {
                frame: 87
                value: "#ffffff"
            }

            Keyframe {
                frame: 89
                value: "#5ca8ba"
            }

            Keyframe {
                frame: 91
                value: "#5ca8ba"
            }

            Keyframe {
                frame: 93
                value: "#ffffff"
            }
        }

        KeyframeGroup {
            target: kph_195_105
            property: "scale"
            Keyframe {
                frame: 99
                value: 1.2
            }

            Keyframe {
                frame: 101
                value: 1.2
            }

            Keyframe {
                frame: 97
                value: 1
            }

            Keyframe {
                frame: 103
                value: 1
            }
        }

        KeyframeGroup {
            target: kph_195_105
            property: "color"
            Keyframe {
                frame: 97
                value: "#ffffff"
            }

            Keyframe {
                frame: 99
                value: "#5ca8ba"
            }

            Keyframe {
                frame: 101
                value: "#5ca8ba"
            }

            Keyframe {
                frame: 103
                value: "#ffffff"
            }
        }

        KeyframeGroup {
            target: kph_195_106
            property: "scale"
            Keyframe {
                frame: 109
                value: 1.2
            }

            Keyframe {
                frame: 111
                value: 1.2
            }

            Keyframe {
                frame: 107
                value: 1
            }

            Keyframe {
                frame: 113
                value: 1
            }
        }

        KeyframeGroup {
            target: kph_195_106
            property: "color"
            Keyframe {
                frame: 107
                value: "#ffffff"
            }

            Keyframe {
                frame: 109
                value: "#5ca8ba"
            }

            Keyframe {
                frame: 111
                value: "#5ca8ba"
            }

            Keyframe {
                frame: 113
                value: "#ffffff"
            }
        }

        KeyframeGroup {
            target: kph_195_107
            property: "scale"
            Keyframe {
                frame: 119
                value: 1.2
            }

            Keyframe {
                frame: 121
                value: 1.2
            }

            Keyframe {
                frame: 117
                value: 1
            }

            Keyframe {
                frame: 123
                value: 1
            }
        }

        KeyframeGroup {
            target: kph_195_107
            property: "color"
            Keyframe {
                frame: 117
                value: "#ffffff"
            }

            Keyframe {
                frame: 119
                value: "#5ca8ba"
            }

            Keyframe {
                frame: 121
                value: "#5ca8ba"
            }

            Keyframe {
                frame: 123
                value: "#ffffff"
            }
        }

        KeyframeGroup {
            target: kph_195_108
            property: "scale"
            Keyframe {
                frame: 129
                value: 1.2
            }

            Keyframe {
                frame: 131
                value: 1.2
            }

            Keyframe {
                frame: 127
                value: 1
            }

            Keyframe {
                frame: 133
                value: 1
            }
        }

        KeyframeGroup {
            target: kph_195_108
            property: "color"
            Keyframe {
                frame: 127
                value: "#ffffff"
            }

            Keyframe {
                frame: 129
                value: "#5ca8ba"
            }

            Keyframe {
                frame: 131
                value: "#5ca8ba"
            }

            Keyframe {
                frame: 133
                value: "#ffffff"
            }
        }

        KeyframeGroup {
            target: kph_195_109
            property: "scale"
            Keyframe {
                frame: 139
                value: 1.2
            }

            Keyframe {
                frame: 141
                value: 1.2
            }

            Keyframe {
                frame: 137
                value: 1
            }

            Keyframe {
                frame: 143
                value: 1
            }
        }

        KeyframeGroup {
            target: kph_195_109
            property: "color"
            Keyframe {
                frame: 137
                value: "#ffffff"
            }

            Keyframe {
                frame: 139
                value: "#5ca8ba"
            }

            Keyframe {
                frame: 141
                value: "#5ca8ba"
            }

            Keyframe {
                frame: 143
                value: "#ffffff"
            }
        }

        KeyframeGroup {
            target: kph_195_110
            property: "scale"
            Keyframe {
                frame: 149
                value: 1.2
            }

            Keyframe {
                frame: 151
                value: 1.2
            }

            Keyframe {
                frame: 147
                value: 1
            }

            Keyframe {
                frame: 153
                value: 1
            }
        }

        KeyframeGroup {
            target: kph_195_110
            property: "color"
            Keyframe {
                frame: 147
                value: "#ffffff"
            }

            Keyframe {
                frame: 149
                value: "#5ca8ba"
            }

            Keyframe {
                frame: 151
                value: "#5ca8ba"
            }

            Keyframe {
                frame: 153
                value: "#ffffff"
            }
        }

        KeyframeGroup {
            target: kph_195_111
            property: "scale"
            Keyframe {
                frame: 159
                value: 1.2
            }

            Keyframe {
                frame: 161
                value: 1.2
            }

            Keyframe {
                frame: 157
                value: 1
            }

            Keyframe {
                frame: 163
                value: 1
            }
        }

        KeyframeGroup {
            target: kph_195_111
            property: "color"
            Keyframe {
                frame: 157
                value: "#ffffff"
            }

            Keyframe {
                frame: 159
                value: "#5ca8ba"
            }

            Keyframe {
                frame: 161
                value: "#5ca8ba"
            }

            Keyframe {
                frame: 163
                value: "#ffffff"
            }
        }

        KeyframeGroup {
            target: kph_195_112
            property: "scale"
            Keyframe {
                frame: 169
                value: 1.2
            }

            Keyframe {
                frame: 171
                value: 1.2
            }

            Keyframe {
                frame: 167
                value: 1
            }

            Keyframe {
                frame: 173
                value: 1
            }
        }

        KeyframeGroup {
            target: kph_195_112
            property: "color"
            Keyframe {
                frame: 167
                value: "#ffffff"
            }

            Keyframe {
                frame: 169
                value: "#5ca8ba"
            }

            Keyframe {
                frame: 171
                value: "#5ca8ba"
            }

            Keyframe {
                frame: 173
                value: "#ffffff"
            }
        }

        KeyframeGroup {
            target: kph_195_113
            property: "scale"
            Keyframe {
                frame: 179
                value: 1.2
            }

            Keyframe {
                frame: 181
                value: 1.2
            }

            Keyframe {
                frame: 177
                value: 1
            }

            Keyframe {
                frame: 183
                value: 1
            }
        }

        KeyframeGroup {
            target: kph_195_113
            property: "color"
            Keyframe {
                frame: 177
                value: "#ffffff"
            }

            Keyframe {
                frame: 179
                value: "#5ca8ba"
            }

            Keyframe {
                frame: 181
                value: "#5ca8ba"
            }

            Keyframe {
                frame: 183
                value: "#ffffff"
            }
        }

        KeyframeGroup {
            target: kph_195_114
            property: "scale"
            Keyframe {
                frame: 189
                value: 1.2
            }

            Keyframe {
                frame: 191
                value: 1.2
            }

            Keyframe {
                frame: 187
                value: 1
            }

            Keyframe {
                frame: 193
                value: 1
            }
        }

        KeyframeGroup {
            target: kph_195_114
            property: "color"
            Keyframe {
                frame: 187
                value: "#ffffff"
            }

            Keyframe {
                frame: 189
                value: "#5ca8ba"
            }

            Keyframe {
                frame: 191
                value: "#5ca8ba"
            }

            Keyframe {
                frame: 193
                value: "#ffffff"
            }
        }

        KeyframeGroup {
            target: kph_195_115
            property: "scale"
            Keyframe {
                frame: 196
                value: 1
            }

            Keyframe {
                frame: 198
                value: 1.2
            }

            Keyframe {
                frame: 200
                value: 1.2
            }
        }

        KeyframeGroup {
            target: kph_195_115
            property: "color"
            Keyframe {
                frame: 196
                value: "#ffffff"
            }

            Keyframe {
                frame: 198
                value: "#5ca8ba"
            }

            Keyframe {
                frame: 200
                value: "#5ca8ba"
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;height:548;width:653}D{i:59}
}
##^##*/
