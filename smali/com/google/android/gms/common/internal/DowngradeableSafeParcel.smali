.class public abstract Lcom/google/android/gms/common/internal/DowngradeableSafeParcel;
.super Lcom/google/android/gms/internal/zzbfm;

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# static fields
.field private static final zzfzn:Ljava/lang/Object;

.field private static zzfzo:Ljava/lang/ClassLoader;

.field private static zzfzp:Ljava/lang/Integer;


# instance fields
.field private zzfzq:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/DowngradeableSafeParcel;->zzfzn:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbfm;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/internal/DowngradeableSafeParcel;->zzfzq:Z

    return-void
.end method

.method private static zzalf()Ljava/lang/ClassLoader;
    .locals 2

    sget-object v0, Lcom/google/android/gms/common/internal/DowngradeableSafeParcel;->zzfzn:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected static zzalg()Ljava/lang/Integer;
    .locals 2

    sget-object v0, Lcom/google/android/gms/common/internal/DowngradeableSafeParcel;->zzfzn:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected static zzgh(Ljava/lang/String;)Z
    .locals 0

    invoke-static {}, Lcom/google/android/gms/common/internal/DowngradeableSafeParcel;->zzalf()Ljava/lang/ClassLoader;

    const/4 p0, 0x1

    return p0
.end method
