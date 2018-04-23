.class public Lcom/amazonaws/util/json/JsonUtils;
.super Ljava/lang/Object;
.source "JsonUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/util/json/JsonUtils$JsonEngine;
    }
.end annotation


# static fields
.field private static volatile factory:Lcom/amazonaws/util/json/AwsJsonFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lcom/amazonaws/util/json/GsonFactory;

    invoke-direct {v0}, Lcom/amazonaws/util/json/GsonFactory;-><init>()V

    sput-object v0, Lcom/amazonaws/util/json/JsonUtils;->factory:Lcom/amazonaws/util/json/AwsJsonFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getJsonReader(Ljava/io/Reader;)Lcom/amazonaws/util/json/AwsJsonReader;
    .locals 1

    .line 99
    sget-object v0, Lcom/amazonaws/util/json/JsonUtils;->factory:Lcom/amazonaws/util/json/AwsJsonFactory;

    if-nez v0, :cond_0

    .line 100
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Json engine is unavailable."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 102
    :cond_0
    sget-object v0, Lcom/amazonaws/util/json/JsonUtils;->factory:Lcom/amazonaws/util/json/AwsJsonFactory;

    invoke-interface {v0, p0}, Lcom/amazonaws/util/json/AwsJsonFactory;->getJsonReader(Ljava/io/Reader;)Lcom/amazonaws/util/json/AwsJsonReader;

    move-result-object p0

    return-object p0
.end method

.method public static getJsonWriter(Ljava/io/Writer;)Lcom/amazonaws/util/json/AwsJsonWriter;
    .locals 1

    .line 113
    sget-object v0, Lcom/amazonaws/util/json/JsonUtils;->factory:Lcom/amazonaws/util/json/AwsJsonFactory;

    if-nez v0, :cond_0

    .line 114
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Json engine is unavailable."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 116
    :cond_0
    sget-object v0, Lcom/amazonaws/util/json/JsonUtils;->factory:Lcom/amazonaws/util/json/AwsJsonFactory;

    invoke-interface {v0, p0}, Lcom/amazonaws/util/json/AwsJsonFactory;->getJsonWriter(Ljava/io/Writer;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object p0

    return-object p0
.end method

.method private static isClassAvailable(Ljava/lang/String;)Z
    .locals 0

    .line 205
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static jsonToMap(Ljava/io/Reader;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 128
    invoke-static {p0}, Lcom/amazonaws/util/json/JsonUtils;->getJsonReader(Ljava/io/Reader;)Lcom/amazonaws/util/json/AwsJsonReader;

    move-result-object p0

    .line 131
    :try_start_0
    invoke-interface {p0}, Lcom/amazonaws/util/json/AwsJsonReader;->peek()Lcom/amazonaws/util/json/AwsJsonToken;

    move-result-object v0

    if-nez v0, :cond_0

    .line 132
    sget-object p0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object p0

    .line 135
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 136
    invoke-interface {p0}, Lcom/amazonaws/util/json/AwsJsonReader;->beginObject()V

    .line 137
    :goto_0
    invoke-interface {p0}, Lcom/amazonaws/util/json/AwsJsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 138
    invoke-interface {p0}, Lcom/amazonaws/util/json/AwsJsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 139
    invoke-interface {p0}, Lcom/amazonaws/util/json/AwsJsonReader;->isContainer()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 141
    invoke-interface {p0}, Lcom/amazonaws/util/json/AwsJsonReader;->skipValue()V

    goto :goto_0

    .line 143
    :cond_1
    invoke-interface {p0}, Lcom/amazonaws/util/json/AwsJsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 146
    :cond_2
    invoke-interface {p0}, Lcom/amazonaws/util/json/AwsJsonReader;->endObject()V

    .line 147
    invoke-interface {p0}, Lcom/amazonaws/util/json/AwsJsonReader;->close()V

    .line 149
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 151
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    const-string v1, "Unable to parse JSON String."

    invoke-direct {v0, v1, p0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static jsonToMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 164
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 167
    :cond_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/amazonaws/util/json/JsonUtils;->jsonToMap(Ljava/io/Reader;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 165
    :cond_1
    :goto_0
    sget-object p0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object p0
.end method

.method public static mapToString(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 177
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 182
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 183
    invoke-static {v0}, Lcom/amazonaws/util/json/JsonUtils;->getJsonWriter(Ljava/io/Writer;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v1

    .line 184
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->beginObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 185
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 186
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3, v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    goto :goto_0

    .line 188
    :cond_1
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->endObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 189
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->close()V

    .line 190
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 192
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    const-string v1, "Unable to serialize to JSON String."

    invoke-direct {v0, v1, p0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    :goto_1
    const-string/jumbo p0, "{}"

    return-object p0
.end method

.method static setJsonEngine(Lcom/amazonaws/util/json/AwsJsonFactory;)V
    .locals 1

    if-nez p0, :cond_0

    .line 86
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "factory can\'t be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 88
    :cond_0
    sput-object p0, Lcom/amazonaws/util/json/JsonUtils;->factory:Lcom/amazonaws/util/json/AwsJsonFactory;

    return-void
.end method

.method public static setJsonEngine(Lcom/amazonaws/util/json/JsonUtils$JsonEngine;)V
    .locals 1

    .line 66
    sget-object v0, Lcom/amazonaws/util/json/JsonUtils$1;->$SwitchMap$com$amazonaws$util$json$JsonUtils$JsonEngine:[I

    invoke-virtual {p0}, Lcom/amazonaws/util/json/JsonUtils$JsonEngine;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 74
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Unsupported json engine"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 71
    :pswitch_0
    new-instance p0, Lcom/amazonaws/util/json/JacksonFactory;

    invoke-direct {p0}, Lcom/amazonaws/util/json/JacksonFactory;-><init>()V

    sput-object p0, Lcom/amazonaws/util/json/JsonUtils;->factory:Lcom/amazonaws/util/json/AwsJsonFactory;

    goto :goto_0

    .line 68
    :pswitch_1
    new-instance p0, Lcom/amazonaws/util/json/GsonFactory;

    invoke-direct {p0}, Lcom/amazonaws/util/json/GsonFactory;-><init>()V

    sput-object p0, Lcom/amazonaws/util/json/JsonUtils;->factory:Lcom/amazonaws/util/json/AwsJsonFactory;

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
