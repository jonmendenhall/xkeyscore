.class public Lcom/amazonaws/services/s3/S3ClientOptions;
.super Ljava/lang/Object;
.source "S3ClientOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/services/s3/S3ClientOptions$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_ACCELERATE_MODE_ENABLED:Z = false

.field public static final DEFAULT_CHUNKED_ENCODING_DISABLED:Z = false

.field public static final DEFAULT_DUALSTACK_ENABLED:Z = false

.field public static final DEFAULT_PATH_STYLE_ACCESS:Z = false

.field public static final DEFAULT_PAYLOAD_SIGNING_ENABLED:Z = false


# instance fields
.field private final accelerateModeEnabled:Z

.field private final chunkedEncodingDisabled:Z

.field private final dualstackEnabled:Z

.field private pathStyleAccess:Z

.field private final payloadSigningEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 189
    iput-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->pathStyleAccess:Z

    .line 190
    iput-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->chunkedEncodingDisabled:Z

    .line 191
    iput-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->accelerateModeEnabled:Z

    .line 192
    iput-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->payloadSigningEnabled:Z

    .line 193
    iput-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->dualstackEnabled:Z

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/services/s3/S3ClientOptions;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iget-boolean v0, p1, Lcom/amazonaws/services/s3/S3ClientOptions;->pathStyleAccess:Z

    iput-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->pathStyleAccess:Z

    .line 204
    iget-boolean v0, p1, Lcom/amazonaws/services/s3/S3ClientOptions;->chunkedEncodingDisabled:Z

    iput-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->chunkedEncodingDisabled:Z

    .line 205
    iget-boolean v0, p1, Lcom/amazonaws/services/s3/S3ClientOptions;->accelerateModeEnabled:Z

    iput-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->accelerateModeEnabled:Z

    .line 206
    iget-boolean v0, p1, Lcom/amazonaws/services/s3/S3ClientOptions;->payloadSigningEnabled:Z

    iput-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->payloadSigningEnabled:Z

    .line 207
    iget-boolean p1, p1, Lcom/amazonaws/services/s3/S3ClientOptions;->dualstackEnabled:Z

    iput-boolean p1, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->dualstackEnabled:Z

    return-void
.end method

.method private constructor <init>(ZZZZZ)V
    .locals 0

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->pathStyleAccess:Z

    .line 216
    iput-boolean p2, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->chunkedEncodingDisabled:Z

    .line 217
    iput-boolean p3, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->accelerateModeEnabled:Z

    .line 218
    iput-boolean p4, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->payloadSigningEnabled:Z

    .line 219
    iput-boolean p5, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->dualstackEnabled:Z

    return-void
.end method

.method synthetic constructor <init>(ZZZZZLcom/amazonaws/services/s3/S3ClientOptions$1;)V
    .locals 0

    .line 20
    invoke-direct/range {p0 .. p5}, Lcom/amazonaws/services/s3/S3ClientOptions;-><init>(ZZZZZ)V

    return-void
.end method

.method public static builder()Lcom/amazonaws/services/s3/S3ClientOptions$Builder;
    .locals 2

    .line 44
    new-instance v0, Lcom/amazonaws/services/s3/S3ClientOptions$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazonaws/services/s3/S3ClientOptions$Builder;-><init>(Lcom/amazonaws/services/s3/S3ClientOptions$1;)V

    return-object v0
.end method


# virtual methods
.method public isAccelerateModeEnabled()Z
    .locals 1

    .line 281
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->accelerateModeEnabled:Z

    return v0
.end method

.method public isChunkedEncodingDisabled()Z
    .locals 1

    .line 263
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->chunkedEncodingDisabled:Z

    return v0
.end method

.method public isDualstackEnabled()Z
    .locals 1

    .line 341
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->dualstackEnabled:Z

    return v0
.end method

.method public isPathStyleAccess()Z
    .locals 1

    .line 241
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->pathStyleAccess:Z

    return v0
.end method

.method public isPayloadSigningEnabled()Z
    .locals 1

    .line 305
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->payloadSigningEnabled:Z

    return v0
.end method

.method public setPathStyleAccess(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 329
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->pathStyleAccess:Z

    return-void
.end method

.method public withPathStyleAccess(Z)Lcom/amazonaws/services/s3/S3ClientOptions;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 368
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/S3ClientOptions;->setPathStyleAccess(Z)V

    return-object p0
.end method
