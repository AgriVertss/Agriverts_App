

// class MuxService {

//   Future<AssetData?> getAssetList() async {
//     try {
//       Response response = await _dio.get(
//         "/assets",
//       );

//       if (response.statusCode == 200) {
//         AssetData assetData = AssetData.fromJson(response.data);

//         return assetData;
//       }
//     } catch (e) {
//       print('Error starting build: $e');
//       throw Exception('Failed to retrieve videos from MUX');
//     }

//     return null;
//   }
// }
