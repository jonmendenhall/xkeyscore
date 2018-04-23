.class final Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;
.super Ljava/lang/Object;
.source "JacksonFactory.java"

# interfaces
.implements Lcom/amazonaws/util/json/AwsJsonReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/util/json/JacksonFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "JacksonReader"
.end annotation


# instance fields
.field private nextToken:Lcom/fasterxml/jackson/core/JsonToken;

.field private reader:Lcom/fasterxml/jackson/core/JsonParser;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/core/JsonFactory;Ljava/io/Reader;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;->nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 56
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/core/JsonFactory;->createJsonParser(Ljava/io/Reader;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;->reader:Lcom/fasterxml/jackson/core/JsonParser;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 58
    new-instance p2, Lcom/amazonaws/AmazonClientException;

    const-string v0, "Failed to create JSON reader"

    invoke-direct {p2, v0, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private clearToken()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 154
    iput-object v0, p0, Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;->nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-void
.end method

.method private expect(Lcom/fasterxml/jackson/core/JsonToken;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;->nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, p1, :cond_0

    .line 166
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private nextToken()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;->nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;->reader:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;->nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    :cond_0
    return-void
.end method


# virtual methods
.method public beginArray()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;->nextToken()V

    .line 65
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-direct {p0, v0}, Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;->expect(Lcom/fasterxml/jackson/core/JsonToken;)V

    .line 66
    invoke-direct {p0}, Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;->clearToken()V

    return-void
.end method

.method public beginObject()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;->nextToken()V

    .line 79
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-direct {p0, v0}, Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;->expect(Lcom/fasterxml/jackson/core/JsonToken;)V

    .line 80
    invoke-direct {p0}, Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;->clearToken()V

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;->reader:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->close()V

    return-void
.end method

.method public endArray()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;->nextToken()V

    .line 72
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-direct {p0, v0}, Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;->expect(Lcom/fasterxml/jackson/core/JsonToken;)V

    .line 73
    invoke-direct {p0}, Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;->clearToken()V

    return-void
.end method

.method public endObject()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;->nextToken()V

    .line 86
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-direct {p0, v0}, Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;->expect(Lcom/fasterxml/jackson/core/JsonToken;)V

    .line 87
    invoke-direct {p0}, Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;->clearToken()V

    return-void
.end method

.method public hasNext()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    invoke-direct {p0}, Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;->nextToken()V

    .line 99
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    iget-object v1, p0, Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;->nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    iget-object v1, p0, Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;->nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isContainer()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    invoke-direct {p0}, Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;->nextToken()V

    .line 93
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    iget-object v1, p0, Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;->nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    iget-object v1, p0, Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;->nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public nextName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    invoke-direct {p0}, Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;->nextToken()V

    .line 105
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-direct {p0, v0}, Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;->expect(Lcom/fasterxml/jackson/core/JsonToken;)V

    .line 106
    invoke-direct {p0}, Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;->clearToken()V

    .line 107
    iget-object v0, p0, Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;->reader:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextString()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    invoke-direct {p0}, Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;->nextToken()V

    .line 113
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    iget-object v1, p0, Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;->nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;->reader:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 114
    :goto_0
    invoke-direct {p0}, Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;->clearToken()V

    return-object v0
.end method

.method public peek()Lcom/amazonaws/util/json/AwsJsonToken;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    invoke-direct {p0}, Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;->nextToken()V

    .line 121
    iget-object v0, p0, Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;->nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-static {v0}, Lcom/amazonaws/util/json/JacksonFactory;->access$000(Lcom/fasterxml/jackson/core/JsonToken;)Lcom/amazonaws/util/json/AwsJsonToken;

    move-result-object v0

    return-object v0
.end method

.method public skipValue()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    invoke-direct {p0}, Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;->nextToken()V

    .line 127
    iget-object v0, p0, Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;->reader:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    .line 128
    invoke-direct {p0}, Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;->clearToken()V

    return-void
.end method
