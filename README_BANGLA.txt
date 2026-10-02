BHUNYA ERP – GITHUB READY RELEASE

এই ZIP-টি GitHub-এ upload করে Actions চালানোর জন্য প্রস্তুত করা হয়েছে।

GitHub Actions স্বয়ংক্রিয়ভাবে তৈরি করবে:
1. Windows Installer (.exe), Portable EXE এবং ZIP
2. macOS DMG এবং ZIP
3. Linux AppImage এবং DEB
4. Android Debug APK

সবচেয়ে সহজ পদ্ধতি:
1. GitHub-এ একটি EMPTY repository তৈরি করুন।
2. এই ZIP-এর সব file repository-তে upload করুন।
3. Commit করুন।
4. উপরের Actions tab খুলুন।
5. “Bhunya ERP Builds” workflow-এ ঢুকে Run workflow চাপতে পারেন।
   অথবা master/main branch-এ push হলেই build শুরু হবে।
6. Build শেষ হলে workflow-এর নিচে Artifacts থেকে EXE/APK download করুন।

নোট:
- Android build-এর জন্য GitHub Actions নিজেই JDK ও Android SDK সেটআপ করবে।
- এই project-এর বর্তমান APK হলো debug APK; Play Store release-এর জন্য আলাদা signing key দরকার।
