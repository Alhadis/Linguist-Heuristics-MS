include_rules = [
  "+third_party/libjpeg",
  "+third_party/libjpeg_turbo",
  "+call",
  "+common_audio",
  "+common_video",
  "+logging/rtc_event_log",
  "+media/base",
  "+media/engine",
  "+modules/audio_coding",
  "+modules/audio_device",
  "+modules/audio_mixer",
  "+modules/audio_processing",
  "+modules/rtp_rtcp",
  "+modules/video_capture",
  "+modules/video_coding",
  "+sdk",
  "+system_wrappers",
  "+third_party/libyuv",
]

specific_include_rules = {
  "gmock\.h": [
    "+testing/gmock/include/gmock",
  ],
  "gtest\.h": [
    "+testing/gtest/include/gtest",
  ],
  ".*congestion_controller_feedback_fuzzer\.cc": [
    "+modules/congestion_controller/include/receive_side_congestion_controller.h",
    "+modules/pacing/packet_router.h",
    "+modules/remote_bitrate_estimator/include/remote_bitrate_estimator.h",
  ],
  ".*pseudotcp_parser_fuzzer\.cc": [
    "+p2p/base/pseudotcp.h",
  ],
  ".*stun_parser_fuzzer\.cc": [
    "+p2p/base/stun.h",
  ],
  ".*stun_validator_fuzzer\.cc": [
    "+p2p/base/stun.h",
  ],
}
