.class public Lcom/amazonaws/services/s3/AmazonS3URI;
.super Ljava/lang/Object;
.source "AmazonS3URI.java"


# static fields
.field private static final ENDPOINT_PATTERN:Ljava/util/regex/Pattern;

.field private static final VERSION_ID_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final bucket:Ljava/lang/String;

.field private final isPathStyle:Z

.field private final key:Ljava/lang/String;

.field private final region:Ljava/lang/String;

.field private final uri:Ljava/net/URI;

.field private final versionId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^(.+\\.)?s3[.-]([a-z0-9-]+)\\."

    .line 29
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/s3/AmazonS3URI;->ENDPOINT_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "[&;]"

    .line 31
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/s3/AmazonS3URI;->VERSION_ID_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 48
    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/AmazonS3URI;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 62
    invoke-static {p1, p2}, Lcom/amazonaws/services/s3/AmazonS3URI;->preprocessUrlStr(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/amazonaws/services/s3/AmazonS3URI;-><init>(Ljava/net/URI;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/AmazonS3URI;-><init>(Ljava/net/URI;Z)V

    return-void
.end method

.method private constructor <init>(Ljava/net/URI;Z)V
    .locals 6

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 76
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "uri cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 78
    :cond_0
    iput-object p1, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->uri:Ljava/net/URI;

    const-string v0, "s3"

    .line 81
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    .line 82
    iput-object v2, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->region:Ljava/lang/String;

    .line 83
    iput-object v2, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->versionId:Ljava/lang/String;

    .line 84
    iput-boolean v1, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->isPathStyle:Z

    .line 85
    invoke-virtual {p1}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->bucket:Ljava/lang/String;

    .line 87
    iget-object p2, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->bucket:Ljava/lang/String;

    if-nez p2, :cond_1

    .line 88
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid S3 URI: no bucket: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 92
    :cond_1
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p2

    .line 93
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-gt p2, v3, :cond_2

    .line 95
    iput-object v2, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->key:Ljava/lang/String;

    goto :goto_0

    .line 99
    :cond_2
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->key:Ljava/lang/String;

    :goto_0
    return-void

    .line 104
    :cond_3
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 106
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid S3 URI: no hostname: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 110
    :cond_4
    sget-object v4, Lcom/amazonaws/services/s3/AmazonS3URI;->ENDPOINT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-nez v4, :cond_5

    .line 112
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid S3 URI: hostname does not appear to be a valid S3 endpoint: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 117
    :cond_5
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 118
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_2

    .line 157
    :cond_6
    iput-boolean v1, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->isPathStyle:Z

    .line 160
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr p2, v3

    invoke-virtual {v4, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->bucket:Ljava/lang/String;

    .line 162
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 163
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_8

    const-string p2, "/"

    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    goto :goto_1

    .line 167
    :cond_7
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->key:Ljava/lang/String;

    goto :goto_4

    .line 164
    :cond_8
    :goto_1
    iput-object v2, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->key:Ljava/lang/String;

    goto :goto_4

    .line 121
    :cond_9
    :goto_2
    iput-boolean v3, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->isPathStyle:Z

    if-eqz p2, :cond_a

    .line 125
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_a
    invoke-virtual {p1}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object p2

    :goto_3
    const-string v1, "/"

    .line 127
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 128
    iput-object v2, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->bucket:Ljava/lang/String;

    .line 129
    iput-object v2, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->key:Ljava/lang/String;

    goto :goto_4

    :cond_b
    const/16 v1, 0x2f

    .line 132
    invoke-virtual {p2, v1, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_c

    .line 136
    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/amazonaws/services/s3/AmazonS3URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->bucket:Ljava/lang/String;

    .line 137
    iput-object v2, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->key:Ljava/lang/String;

    goto :goto_4

    .line 139
    :cond_c
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    if-ne v1, v4, :cond_d

    .line 142
    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/amazonaws/services/s3/AmazonS3URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->bucket:Ljava/lang/String;

    .line 143
    iput-object v2, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->key:Ljava/lang/String;

    goto :goto_4

    .line 148
    :cond_d
    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amazonaws/services/s3/AmazonS3URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->bucket:Ljava/lang/String;

    add-int/2addr v1, v3

    .line 149
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/amazonaws/services/s3/AmazonS3URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->key:Ljava/lang/String;

    .line 171
    :goto_4
    invoke-virtual {p1}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazonaws/services/s3/AmazonS3URI;->parseVersionId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->versionId:Ljava/lang/String;

    const-string p1, "amazonaws"

    const/4 p2, 0x2

    .line 173
    invoke-virtual {v0, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 175
    iput-object v2, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->region:Ljava/lang/String;

    goto :goto_5

    .line 177
    :cond_e
    invoke-virtual {v0, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->region:Ljava/lang/String;

    :goto_5
    return-void
.end method

.method private static appendDecoded(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
    .locals 1

    .line 332
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    if-le p2, v0, :cond_0

    .line 333
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid percent-encoded string:\""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    add-int/lit8 v0, p2, 0x1

    .line 337
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 p2, p2, 0x2

    .line 338
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 340
    invoke-static {v0}, Lcom/amazonaws/services/s3/AmazonS3URI;->fromHex(C)I

    move-result p2

    shl-int/lit8 p2, p2, 0x4

    invoke-static {p1}, Lcom/amazonaws/services/s3/AmazonS3URI;->fromHex(C)I

    move-result p1

    or-int/2addr p1, p2

    int-to-char p1, p1

    .line 341
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 286
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 287
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x25

    if-ne v1, v2, :cond_1

    .line 288
    invoke-static {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3URI;->decode(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method private static decode(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 304
    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    invoke-static {v0, p0, p1}, Lcom/amazonaws/services/s3/AmazonS3URI;->appendDecoded(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    add-int/lit8 p1, p1, 0x3

    .line 308
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 309
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x25

    if-ne v1, v2, :cond_0

    .line 310
    invoke-static {v0, p0, p1}, Lcom/amazonaws/services/s3/AmazonS3URI;->appendDecoded(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    add-int/lit8 p1, p1, 0x2

    goto :goto_1

    .line 313
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 317
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static fromHex(C)I
    .locals 3

    const/16 v0, 0x30

    if-ge p0, v0, :cond_0

    .line 352
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid percent-encoded string: bad character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "\' in escape sequence."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/16 v1, 0x39

    if-gt p0, v1, :cond_1

    sub-int/2addr p0, v0

    return p0

    :cond_1
    const/16 v0, 0x41

    if-ge p0, v0, :cond_2

    .line 361
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid percent-encoded string: bad character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "\' in escape sequence."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/16 v1, 0x46

    if-gt p0, v1, :cond_3

    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0xa

    return p0

    :cond_3
    const/16 v0, 0x61

    if-ge p0, v0, :cond_4

    .line 370
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid percent-encoded string: bad character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "\' in escape sequence."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/16 v1, 0x66

    if-gt p0, v1, :cond_5

    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0xa

    return p0

    .line 378
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid percent-encoded string: bad character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "\' in escape sequence."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseVersionId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-eqz p0, :cond_1

    .line 190
    sget-object v0, Lcom/amazonaws/services/s3/AmazonS3URI;->VERSION_ID_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p0

    .line 191
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    const-string v3, "versionId="

    .line 192
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 p0, 0xa

    .line 193
    invoke-virtual {v2, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amazonaws/services/s3/AmazonS3URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static preprocessUrlStr(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    :try_start_0
    const-string p1, "UTF-8"

    .line 261
    invoke-static {p0, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "%3A"

    const-string v0, ":"

    .line 262
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "%2F"

    const-string v0, "/"

    .line 263
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "+"

    const-string v0, " "

    .line 264
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 268
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_c

    .line 386
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_4

    .line 388
    :cond_1
    check-cast p1, Lcom/amazonaws/services/s3/AmazonS3URI;

    .line 390
    iget-boolean v2, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->isPathStyle:Z

    iget-boolean v3, p1, Lcom/amazonaws/services/s3/AmazonS3URI;->isPathStyle:Z

    if-eq v2, v3, :cond_2

    return v1

    .line 391
    :cond_2
    iget-object v2, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->uri:Ljava/net/URI;

    iget-object v3, p1, Lcom/amazonaws/services/s3/AmazonS3URI;->uri:Ljava/net/URI;

    invoke-virtual {v2, v3}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 392
    :cond_3
    iget-object v2, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->bucket:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->bucket:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazonaws/services/s3/AmazonS3URI;->bucket:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_4
    iget-object v2, p1, Lcom/amazonaws/services/s3/AmazonS3URI;->bucket:Ljava/lang/String;

    if-eqz v2, :cond_5

    :goto_0
    return v1

    .line 393
    :cond_5
    iget-object v2, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->key:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->key:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazonaws/services/s3/AmazonS3URI;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_1

    :cond_6
    iget-object v2, p1, Lcom/amazonaws/services/s3/AmazonS3URI;->key:Ljava/lang/String;

    if-eqz v2, :cond_7

    :goto_1
    return v1

    .line 394
    :cond_7
    iget-object v2, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->versionId:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->versionId:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazonaws/services/s3/AmazonS3URI;->versionId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_2

    :cond_8
    iget-object v2, p1, Lcom/amazonaws/services/s3/AmazonS3URI;->versionId:Ljava/lang/String;

    if-eqz v2, :cond_9

    :goto_2
    return v1

    .line 395
    :cond_9
    iget-object v2, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->region:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->region:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazonaws/services/s3/AmazonS3URI;->region:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    :cond_a
    iget-object p1, p1, Lcom/amazonaws/services/s3/AmazonS3URI;->region:Ljava/lang/String;

    if-nez p1, :cond_b

    goto :goto_3

    :cond_b
    move v0, v1

    :goto_3
    return v0

    :cond_c
    :goto_4
    return v1
.end method

.method public getBucket()Ljava/lang/String;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->bucket:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->region:Ljava/lang/String;

    return-object v0
.end method

.method public getURI()Ljava/net/URI;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->uri:Ljava/net/URI;

    return-object v0
.end method

.method public getVersionId()Ljava/lang/String;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->versionId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 400
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    .line 401
    iget-boolean v2, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->isPathStyle:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 402
    iget-object v2, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->bucket:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->bucket:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 403
    iget-object v2, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->key:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->key:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 404
    iget-object v2, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->versionId:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->versionId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    add-int/2addr v0, v2

    mul-int/2addr v1, v0

    .line 405
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->region:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->region:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    :cond_3
    add-int/2addr v1, v3

    return v1
.end method

.method public isPathStyle()Z
    .locals 1

    .line 212
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->isPathStyle:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
