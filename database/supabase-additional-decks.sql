-- =====================================================
-- LexiFlow AI - Additional Vocabulary Decks
-- =====================================================
-- Run this in Supabase SQL Editor to add 5 new decks
-- Each deck contains 10 useful words
-- =====================================================

-- ============================================
-- DECK 1: Business & Career (Kinh doanh & Sự nghiệp)
-- ============================================
INSERT INTO decks (id, name, is_system)
VALUES ('00000000-0000-0000-0000-000000000002', 'Business & Career', false);

INSERT INTO words (deck_id, word, ipa, pos, definition, example) VALUES
('00000000-0000-0000-0000-000000000002', 'negotiate', '/nɪˈɡoʊ.ʃi.eɪt/', 'verb', 'Đàm phán, thương lượng', 'We need to negotiate the terms of the contract.'),
('00000000-0000-0000-0000-000000000002', 'entrepreneur', '/ˌɑːn.trə.prəˈnɝː/', 'noun', 'Doanh nhân, người khởi nghiệp', 'She is a successful entrepreneur in the tech industry.'),
('00000000-0000-0000-0000-000000000002', 'collaborate', '/kəˈlæb.ə.reɪt/', 'verb', 'Hợp tác, cộng tác', 'Our teams collaborate on multiple projects.'),
('00000000-0000-0000-0000-000000000002', 'revenue', '/ˈrev.ə.nuː/', 'noun', 'Doanh thu, nguồn thu', 'The company''s revenue increased by 25% this year.'),
('00000000-0000-0000-0000-000000000002', 'strategic', '/strəˈtiː.dʒɪk/', 'adjective', 'Chiến lược, mang tính chiến lược', 'We need to make strategic decisions for future growth.'),
('00000000-0000-0000-0000-000000000002', 'incentive', '/ɪnˈsen.t̬ɪv/', 'noun', 'Động lực, khuyến khích', 'The company offers incentives to high-performing employees.'),
('00000000-0000-0000-0000-000000000002', 'delegate', '/ˈdel.ɪ.ɡeɪt/', 'verb', 'Ủy quyền, giao phó', 'As a manager, you must learn to delegate tasks effectively.'),
('00000000-0000-0000-0000-000000000002', 'prospect', '/ˈprɑː.spekt/', 'noun', 'Triển vọng, khả năng', 'The job has excellent career prospects.'),
('00000000-0000-0000-0000-000000000002', 'benchmark', '/ˈbentʃ.mɑːrk/', 'noun', 'Chuẩn mực, tiêu chuẩn đánh giá', 'We use industry benchmarks to measure our performance.'),
('00000000-0000-0000-0000-000000000002', 'stakeholder', '/ˈsteɪk.hoʊl.dɚ/', 'noun', 'Bên liên quan, cổ đông', 'We need to consider all stakeholders in this decision.');

-- ============================================
-- DECK 2: Technology & Innovation
-- ============================================
INSERT INTO decks (id, name, is_system)
VALUES ('00000000-0000-0000-0000-000000000003', 'Technology & Innovation', false);

INSERT INTO words (deck_id, word, ipa, pos, definition, example) VALUES
('00000000-0000-0000-0000-000000000003', 'algorithm', '/ˈæl.ɡə.rɪ.ðəm/', 'noun', 'Thuật toán', 'The algorithm sorts data efficiently.'),
('00000000-0000-0000-0000-000000000003', 'artificial', '/ˌɑːr.t̬əˈfɪʃ.əl/', 'adjective', 'Nhân tạo, giả tạo', 'Artificial intelligence is transforming many industries.'),
('00000000-0000-0000-0000-000000000003', 'innovate', '/ˈɪn.ə.veɪt/', 'verb', 'Đổi mới, sáng tạo', 'Companies must innovate to stay competitive.'),
('00000000-0000-0000-0000-000000000003', 'interface', '/ˈɪn.t̬ɚ.feɪs/', 'noun', 'Giao diện', 'The user interface is intuitive and easy to navigate.'),
('00000000-0000-0000-0000-000000000003', 'digital', '/ˈdɪdʒ.ɪ.t̬əl/', 'adjective', 'Kỹ thuật số, số hóa', 'We live in an increasingly digital world.'),
('00000000-0000-0000-0000-000000000003', 'automate', '/ˈɔː.t̬ə.meɪt/', 'verb', 'Tự động hóa', 'We can automate many repetitive tasks.'),
('00000000-0000-0000-0000-000000000003', 'breakthrough', '/ˈbreɪk.θruː/', 'noun', 'Đột phá, bước tiến đột phá', 'Scientists achieved a major breakthrough in quantum computing.'),
('00000000-0000-0000-0000-000000000003', 'disrupt', '/dɪsˈrʌpt/', 'verb', 'Làm gián đoạn, phá vỡ', 'New technology can disrupt traditional industries.'),
('00000000-0000-0000-0000-000000000003', 'cybersecurity', '/ˌsaɪ.bɚ.sɪˈkjʊr.ə.t̬i/', 'noun', 'An ninh mạng', 'Cybersecurity is crucial for protecting sensitive data.'),
('00000000-0000-0000-0000-000000000003', 'prototype', '/ˈproʊ.t̬ə.taɪp/', 'noun', 'Nguyên mẫu, mẫu thử', 'Engineers built a prototype to test the new design.');

-- ============================================
-- DECK 3: Travel & Culture
-- ============================================
INSERT INTO decks (id, name, is_system)
VALUES ('00000000-0000-0000-0000-000000000004', 'Travel & Culture', false);

INSERT INTO words (deck_id, word, ipa, pos, definition, example) VALUES
('00000000-0000-0000-0000-000000000004', 'destination', '/ˌdes.t̬ɪˈneɪ.ʃən/', 'noun', 'Điểm đến, địa điểm', 'Paris is a popular tourist destination.'),
('00000000-0000-0000-0000-000000000004', 'heritage', '/ˈher.ɪ.t̬ɪdʒ/', 'noun', 'Di sản, truyền thống', 'The city has a rich cultural heritage.'),
('00000000-0000-0000-0000-000000000004', 'accommodate', '/əˈkɑː.mə.deɪt/', 'verb', 'Chứa, cung cấp chỗ ở', 'The hotel can accommodate up to 200 guests.'),
('00000000-0000-0000-0000-000000000004', 'exotic', '/ɪɡˈzɑː.t̬ɪk/', 'adjective', 'Kỳ lạ, ngoại lai, độc đáo', 'We tried exotic foods from different countries.'),
('00000000-0000-0000-0000-000000000004', 'itinerary', '/aɪˈtɪn.ə.rer.i/', 'noun', 'Hành trình, lịch trình', 'Our itinerary includes visits to five major cities.'),
('00000000-0000-0000-0000-000000000004', 'monument', '/ˈmɑː.njə.mənt/', 'noun', 'Đài tưởng niệm, di tích', 'The Washington Monument is an iconic landmark.'),
('00000000-0000-0000-0000-000000000004', 'customs', '/ˈkʌs.t̬əmz/', 'noun', 'Hải quan; phong tục', 'You must go through customs at the airport.'),
('00000000-0000-0000-0000-000000000004', 'authentic', '/ɔːˈθen.t̬ɪk/', 'adjective', 'Xác thực, chính gốc', 'We enjoyed authentic Italian cuisine in Rome.'),
('00000000-0000-0000-0000-000000000004', 'expedition', '/ˌek.spəˈdɪʃ.ən/', 'noun', 'Cuộc thám hiểm, chuyến đi', 'They planned an expedition to the Amazon rainforest.'),
('00000000-0000-0000-0000-000000000004', 'wander', '/ˈwɑːn.dɚ/', 'verb', 'Đi lang thang, tản bộ', 'We love to wander through the old streets of the city.');

-- ============================================
-- DECK 4: Health & Wellness
-- ============================================
INSERT INTO decks (id, name, is_system)
VALUES ('00000000-0000-0000-0000-000000000005', 'Health & Wellness', false);

INSERT INTO words (deck_id, word, ipa, pos, definition, example) VALUES
('00000000-0000-0000-0000-000000000005', 'nutrition', '/nuːˈtrɪʃ.ən/', 'noun', 'Dinh dưỡng', 'Good nutrition is essential for a healthy lifestyle.'),
('00000000-0000-0000-0000-000000000005', 'immune', '/ɪˈmjuːn/', 'adjective', 'Miễn dịch, được bảo vệ', 'Exercise helps strengthen your immune system.'),
('00000000-0000-0000-0000-000000000005', 'mental', '/ˈmen.t̬əl/', 'adjective', 'Thuộc về tinh thần, tâm lý', 'Mental health is just as important as physical health.'),
('00000000-0000-0000-0000-000000000005', 'chronic', '/ˈkrɑː.nɪk/', 'adjective', 'Mãn tính, kinh niên', 'Diabetes is a chronic disease that requires ongoing management.'),
('00000000-0000-0000-0000-000000000005', 'diagnose', '/ˌdaɪ.əɡˈnoʊs/', 'verb', 'Chẩn đoán', 'Doctors use various tests to diagnose illnesses.'),
('00000000-0000-0000-0000-000000000005', 'therapy', '/ˈθer.ə.pi/', 'noun', 'Liệu pháp, trị liệu', 'Physical therapy helped her recover from the injury.'),
('00000000-0000-0000-0000-000000000005', 'symptom', '/ˈsɪmp.təm/', 'noun', 'Triệu chứng', 'Fever is a common symptom of the flu.'),
('00000000-0000-0000-0000-000000000005', 'preventive', '/prɪˈven.t̬ɪv/', 'adjective', 'Phòng ngừa, dự phòng', 'Preventive care can help avoid serious health problems.'),
('00000000-0000-0000-0000-000000000005', 'hydration', '/haɪˈdreɪ.ʃən/', 'noun', 'Sự cung cấp nước, hydrat hóa', 'Proper hydration is crucial during exercise.'),
('00000000-0000-0000-0000-000000000005', 'vitality', '/vaɪˈtæl.ə.t̬i/', 'noun', 'Sức sống, sinh lực', 'Regular exercise can increase your energy and vitality.');

-- ============================================
-- DECK 5: Environment & Nature
-- ============================================
INSERT INTO decks (id, name, is_system)
VALUES ('00000000-0000-0000-0000-000000000006', 'Environment & Nature', false);

INSERT INTO words (deck_id, word, ipa, pos, definition, example) VALUES
('00000000-0000-0000-0000-000000000006', 'sustainable', '/səˈsteɪ.nə.bəl/', 'adjective', 'Bền vững, có thể duy trì', 'We need to develop sustainable energy sources.'),
('00000000-0000-0000-0000-000000000006', 'biodiversity', '/ˌbaɪ.oʊ.daɪˈvɝː.sə.t̬i/', 'noun', 'Đa dạng sinh học', 'Rainforests have incredible biodiversity.'),
('00000000-0000-0000-0000-000000000006', 'conservation', '/ˌkɑːn.sɚˈveɪ.ʃən/', 'noun', 'Bảo tồn, gìn giữ', 'Wildlife conservation is crucial for future generations.'),
('00000000-0000-0000-0000-000000000006', 'pollution', '/pəˈluː.ʃən/', 'noun', 'Ô nhiễm', 'Air pollution is a serious problem in many cities.'),
('00000000-0000-0000-0000-000000000006', 'renewable', '/rɪˈnuː.ə.bəl/', 'adjective', 'Có thể tái tạo', 'Solar and wind are renewable energy sources.'),
('00000000-0000-0000-0000-000000000006', 'ecosystem', '/ˈiː.koʊ.sɪs.t̬əm/', 'noun', 'Hệ sinh thái', 'Coral reefs are delicate ecosystems.'),
('00000000-0000-0000-0000-000000000006', 'deforestation', '/diːˌfɔːr.ɪˈsteɪ.ʃən/', 'noun', 'Phá rừng, mất rừng', 'Deforestation contributes to climate change.'),
('00000000-0000-0000-0000-000000000006', 'emission', '/ɪˈmɪʃ.ən/', 'noun', 'Khí thải, sự phát thải', 'We need to reduce carbon emissions.'),
('00000000-0000-0000-0000-000000000006', 'habitat', '/ˈhæb.ɪ.tæt/', 'noun', 'Môi trường sống, nơi cư trú', 'Protecting animal habitats is essential for biodiversity.'),
('00000000-0000-0000-0000-000000000006', 'recycle', '/ˌriːˈsaɪ.kəl/', 'verb', 'Tái chế', 'Remember to recycle plastic bottles and paper.');

-- =====================================================
-- DONE! 5 new decks with 50 words added.
-- Copy this entire script and run it in:
-- Supabase Dashboard > SQL Editor > New Query
-- =====================================================
