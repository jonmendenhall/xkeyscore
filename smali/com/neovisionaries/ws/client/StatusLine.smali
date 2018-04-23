.class public Lcom/neovisionaries/ws/client/StatusLine;
.super Ljava/lang/Object;
.source "StatusLine.java"


# instance fields
.field private final mHttpVersion:Ljava/lang/String;

.field private final mReasonPhrase:Ljava/lang/String;

.field private final mStatusCode:I

.field private final mString:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, " +"

    const/4 v1, 0x3

    .line 70
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 72
    array-length v2, v0

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    .line 74
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_0
    const/4 v2, 0x0

    .line 77
    aget-object v2, v0, v2

    iput-object v2, p0, Lcom/neovisionaries/ws/client/StatusLine;->mHttpVersion:Ljava/lang/String;

    const/4 v2, 0x1

    .line 78
    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/neovisionaries/ws/client/StatusLine;->mStatusCode:I

    .line 79
    array-length v2, v0

    if-ne v2, v1, :cond_1

    aget-object v0, v0, v3

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/neovisionaries/ws/client/StatusLine;->mReasonPhrase:Ljava/lang/String;

    .line 80
    iput-object p1, p0, Lcom/neovisionaries/ws/client/StatusLine;->mString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getHttpVersion()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/neovisionaries/ws/client/StatusLine;->mHttpVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getReasonPhrase()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/neovisionaries/ws/client/StatusLine;->mReasonPhrase:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .line 104
    iget v0, p0, Lcom/neovisionaries/ws/client/StatusLine;->mStatusCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/neovisionaries/ws/client/StatusLine;->mString:Ljava/lang/String;

    return-object v0
.end method
