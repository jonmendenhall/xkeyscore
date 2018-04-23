.class public final Lcom/google/android/gms/internal/zzcbb;
.super Ljava/lang/Object;


# static fields
.field private static zzhiv:Lcom/google/android/gms/internal/zzcbb;


# instance fields
.field private final zzhiw:Lcom/google/android/gms/internal/zzcaw;

.field private final zzhix:Lcom/google/android/gms/internal/zzcax;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzcbb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzcbb;-><init>()V

    const-class v1, Lcom/google/android/gms/internal/zzcbb;

    monitor-enter v1

    :try_start_0
    sput-object v0, Lcom/google/android/gms/internal/zzcbb;->zzhiv:Lcom/google/android/gms/internal/zzcbb;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzcaw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzcaw;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcbb;->zzhiw:Lcom/google/android/gms/internal/zzcaw;

    new-instance v0, Lcom/google/android/gms/internal/zzcax;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzcax;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcbb;->zzhix:Lcom/google/android/gms/internal/zzcax;

    return-void
.end method

.method private static zzara()Lcom/google/android/gms/internal/zzcbb;
    .locals 2

    const-class v0, Lcom/google/android/gms/internal/zzcbb;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/zzcbb;->zzhiv:Lcom/google/android/gms/internal/zzcbb;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static zzarb()Lcom/google/android/gms/internal/zzcaw;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzcbb;->zzara()Lcom/google/android/gms/internal/zzcbb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcbb;->zzhiw:Lcom/google/android/gms/internal/zzcaw;

    return-object v0
.end method

.method public static zzarc()Lcom/google/android/gms/internal/zzcax;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzcbb;->zzara()Lcom/google/android/gms/internal/zzcbb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcbb;->zzhix:Lcom/google/android/gms/internal/zzcax;

    return-object v0
.end method
