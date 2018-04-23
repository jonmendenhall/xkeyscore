.class Lcom/auth0/android/jwt/JWTDeserializer;
.super Ljava/lang/Object;
.source "JWTDeserializer.java"

# interfaces
.implements Lcom/google/gson/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/JsonDeserializer<",
        "Lcom/auth0/android/jwt/JWTPayload;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getDate(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/util/Date;
    .locals 2

    .line 63
    invoke-virtual {p1, p2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 66
    :cond_0
    invoke-virtual {p1, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    .line 67
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method private getString(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 71
    invoke-virtual {p1, p2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 74
    :cond_0
    invoke-virtual {p1, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getStringOrArray(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonObject;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 46
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 47
    invoke-virtual {p1, p2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 48
    invoke-virtual {p1, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    .line 49
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 50
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object p1

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->size()I

    move-result p2

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 p2, 0x0

    .line 52
    :goto_0
    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->size()I

    move-result v1

    if-ge p2, v1, :cond_1

    .line 53
    invoke-virtual {p1, p2}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/auth0/android/jwt/JWTPayload;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .line 21
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_1

    .line 25
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    const-string p2, "iss"

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/auth0/android/jwt/JWTDeserializer;->getString(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string p2, "sub"

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/auth0/android/jwt/JWTDeserializer;->getString(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string p2, "exp"

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/auth0/android/jwt/JWTDeserializer;->getDate(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    const-string p2, "nbf"

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/auth0/android/jwt/JWTDeserializer;->getDate(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    const-string p2, "iat"

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/auth0/android/jwt/JWTDeserializer;->getDate(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    const-string p2, "jti"

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/auth0/android/jwt/JWTDeserializer;->getString(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string p2, "aud"

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/auth0/android/jwt/JWTDeserializer;->getStringOrArray(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 37
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 38
    invoke-virtual {p1}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 39
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    new-instance v0, Lcom/auth0/android/jwt/ClaimImpl;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/gson/JsonElement;

    invoke-direct {v0, p2}, Lcom/auth0/android/jwt/ClaimImpl;-><init>(Lcom/google/gson/JsonElement;)V

    invoke-interface {v8, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 42
    :cond_1
    new-instance p1, Lcom/auth0/android/jwt/JWTPayload;

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Lcom/auth0/android/jwt/JWTPayload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    return-object p1

    .line 22
    :cond_2
    :goto_1
    new-instance p1, Lcom/auth0/android/jwt/DecodeException;

    const-string p2, "The token\'s payload had an invalid JSON format."

    invoke-direct {p1, p2}, Lcom/auth0/android/jwt/DecodeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .line 18
    invoke-virtual {p0, p1, p2, p3}, Lcom/auth0/android/jwt/JWTDeserializer;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/auth0/android/jwt/JWTPayload;

    move-result-object p1

    return-object p1
.end method
