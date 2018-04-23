.class public Lcom/neovisionaries/ws/client/WebSocketExtension;
.super Ljava/lang/Object;
.source "WebSocketExtension.java"


# static fields
.field public static final PERMESSAGE_DEFLATE:Ljava/lang/String; = "permessage-deflate"


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/neovisionaries/ws/client/WebSocketExtension;)V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 83
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'source\' is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 86
    :cond_0
    invoke-virtual {p1}, Lcom/neovisionaries/ws/client/WebSocketExtension;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/neovisionaries/ws/client/WebSocketExtension;->mName:Ljava/lang/String;

    .line 87
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/neovisionaries/ws/client/WebSocketExtension;->getParameters()Ljava/util/Map;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/neovisionaries/ws/client/WebSocketExtension;->mParameters:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {p1}, Lcom/neovisionaries/ws/client/Token;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'name\' is not a valid token."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 62
    :cond_0
    iput-object p1, p0, Lcom/neovisionaries/ws/client/WebSocketExtension;->mName:Ljava/lang/String;

    .line 63
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/neovisionaries/ws/client/WebSocketExtension;->mParameters:Ljava/util/Map;

    return-void
.end method

.method private static createInstance(Ljava/lang/String;)Lcom/neovisionaries/ws/client/WebSocketExtension;
    .locals 1

    const-string v0, "permessage-deflate"

    .line 327
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    new-instance v0, Lcom/neovisionaries/ws/client/PerMessageDeflateExtension;

    invoke-direct {v0, p0}, Lcom/neovisionaries/ws/client/PerMessageDeflateExtension;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 332
    :cond_0
    new-instance v0, Lcom/neovisionaries/ws/client/WebSocketExtension;

    invoke-direct {v0, p0}, Lcom/neovisionaries/ws/client/WebSocketExtension;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static extractValue([Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 316
    array-length v0, p0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    .line 321
    aget-object p0, p0, v0

    invoke-static {p0}, Lcom/neovisionaries/ws/client/Token;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;)Lcom/neovisionaries/ws/client/WebSocketExtension;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 250
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v1, "\\s*;\\s*"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 252
    array-length v1, p0

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    const/4 v1, 0x0

    .line 259
    aget-object v2, p0, v1

    .line 261
    invoke-static {v2}, Lcom/neovisionaries/ws/client/Token;->isValid(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    return-object v0

    .line 268
    :cond_2
    invoke-static {v2}, Lcom/neovisionaries/ws/client/WebSocketExtension;->createInstance(Ljava/lang/String;)Lcom/neovisionaries/ws/client/WebSocketExtension;

    move-result-object v0

    const/4 v2, 0x1

    .line 271
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_7

    .line 274
    aget-object v3, p0, v2

    const-string v4, "\\s*=\\s*"

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 277
    array-length v4, v3

    if-eqz v4, :cond_6

    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    .line 284
    :cond_3
    aget-object v4, v3, v1

    .line 286
    invoke-static {v4}, Lcom/neovisionaries/ws/client/Token;->isValid(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_1

    .line 294
    :cond_4
    invoke-static {v3}, Lcom/neovisionaries/ws/client/WebSocketExtension;->extractValue([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 298
    invoke-static {v3}, Lcom/neovisionaries/ws/client/Token;->isValid(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_1

    .line 307
    :cond_5
    invoke-virtual {v0, v4, v3}, Lcom/neovisionaries/ws/client/WebSocketExtension;->setParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/neovisionaries/ws/client/WebSocketExtension;

    :cond_6
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    return-object v0
.end method


# virtual methods
.method public containsParameter(Ljava/lang/String;)Z
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocketExtension;->mParameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocketExtension;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocketExtension;->mParameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocketExtension;->mParameters:Ljava/util/Map;

    return-object v0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/neovisionaries/ws/client/WebSocketExtension;
    .locals 1

    .line 170
    invoke-static {p1}, Lcom/neovisionaries/ws/client/Token;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'key\' is not a valid token."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    if-eqz p2, :cond_1

    .line 180
    invoke-static {p2}, Lcom/neovisionaries/ws/client/Token;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 183
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'value\' is not a valid token."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocketExtension;->mParameters:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/neovisionaries/ws/client/WebSocketExtension;->mName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    iget-object v1, p0, Lcom/neovisionaries/ws/client/WebSocketExtension;->mParameters:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    const-string v3, "; "

    .line 204
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 208
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "="

    .line 211
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 215
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method validate()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/WebSocketException;
        }
    .end annotation

    return-void
.end method
