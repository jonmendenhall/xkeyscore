.class public Lcom/amazonaws/SDKGlobalConfiguration;
.super Ljava/lang/Object;
.source "SDKGlobalConfiguration.java"


# static fields
.field public static final ACCESS_KEY_ENV_VAR:Ljava/lang/String; = "AWS_ACCESS_KEY_ID"

.field public static final ACCESS_KEY_SYSTEM_PROPERTY:Ljava/lang/String; = "aws.accessKeyId"

.field public static final ALTERNATE_ACCESS_KEY_ENV_VAR:Ljava/lang/String; = "AWS_ACCESS_KEY"

.field public static final ALTERNATE_SECRET_KEY_ENV_VAR:Ljava/lang/String; = "AWS_SECRET_ACCESS_KEY"

.field public static final AWS_SESSION_TOKEN_ENV_VAR:Ljava/lang/String; = "AWS_SESSION_TOKEN"

.field public static final DEFAULT_METRICS_SYSTEM_PROPERTY:Ljava/lang/String; = "com.amazonaws.sdk.enableDefaultMetrics"

.field public static final DEFAULT_S3_STREAM_BUFFER_SIZE:Ljava/lang/String; = "com.amazonaws.sdk.s3.defaultStreamBufferSize"

.field public static final DISABLE_CERT_CHECKING_SYSTEM_PROPERTY:Ljava/lang/String; = "com.amazonaws.sdk.disableCertChecking"

.field public static final DISABLE_REMOTE_REGIONS_FILE_SYSTEM_PROPERTY:Ljava/lang/String; = "com.amazonaws.regions.RegionUtils.disableRemote"

.field public static final EC2_METADATA_SERVICE_OVERRIDE_SYSTEM_PROPERTY:Ljava/lang/String; = "com.amazonaws.sdk.ec2MetadataServiceEndpointOverride"

.field public static final ENABLE_S3_SIGV4_SYSTEM_PROPERTY:Ljava/lang/String; = "com.amazonaws.services.s3.enableV4"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ENFORCE_S3_SIGV4_SYSTEM_PROPERTY:Ljava/lang/String; = "com.amazonaws.services.s3.enforceV4"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final GLOBAL_TIME_OFFSET:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final PROFILING_SYSTEM_PROPERTY:Ljava/lang/String; = "com.amazonaws.sdk.enableRuntimeProfiling"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final REGIONS_FILE_OVERRIDE_SYSTEM_PROPERTY:Ljava/lang/String; = "com.amazonaws.regions.RegionUtils.fileOverride"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SECRET_KEY_ENV_VAR:Ljava/lang/String; = "AWS_SECRET_KEY"

.field public static final SECRET_KEY_SYSTEM_PROPERTY:Ljava/lang/String; = "aws.secretKey"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 164
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/amazonaws/SDKGlobalConfiguration;->GLOBAL_TIME_OFFSET:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGlobalTimeOffset()I
    .locals 1

    .line 185
    sget-object v0, Lcom/amazonaws/SDKGlobalConfiguration;->GLOBAL_TIME_OFFSET:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public static setGlobalTimeOffset(I)V
    .locals 1

    .line 174
    sget-object v0, Lcom/amazonaws/SDKGlobalConfiguration;->GLOBAL_TIME_OFFSET:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method
