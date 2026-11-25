import 'package:flutter/material.dart';
import 'package:studio_core/app/approved_hub.dart';

/// Onaylı tasarım (Oyun Merkezleri · Tasarım Örnekleri).
const approvedStyle = ApprovedHubStyle(
  background: [Color(0xFF6A1E9C), Color(0xFF3A1270), Color(0xFF180840)],
  accent: Color(0xFFFFB02E),
  card: Color(0xFF5A2492),
  play: Color(0xFFFF7A2E),
  number: Color(0xFFFFC93C),
  blocks: [ApprovedBlock.search, ApprovedBlock.chips, ApprovedBlock.featured, ApprovedBlock.dailyReward],
  featuredKey: 'featured',
  featured: ['oyun-yilan', 'oyun-tugla-kirma', 'oyun-uzay-atisi'],
);
