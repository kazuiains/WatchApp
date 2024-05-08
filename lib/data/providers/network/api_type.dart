enum ApiType {
  create,
  read,
  update,
  delete,
}

extension ApiTypeItem on ApiType {
  int get id {
    switch (this) {
      case ApiType.create:
        return 1;
      case ApiType.read:
        return 2;
      case ApiType.update:
        return 3;
      case ApiType.delete:
        return 4;
    }
  }
}
