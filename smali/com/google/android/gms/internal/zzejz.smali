.class final synthetic Lcom/google/android/gms/internal/zzejz;
.super Ljava/lang/Object;


# static fields
.field static final synthetic zznct:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/google/android/gms/internal/zzekf;->values()[Lcom/google/android/gms/internal/zzekf;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/zzejz;->zznct:[I

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzejz;->zznct:[I

    sget-object v1, Lcom/google/android/gms/internal/zzekf;->zzndc:Lcom/google/android/gms/internal/zzekf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzekf;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/zzejz;->zznct:[I

    sget-object v1, Lcom/google/android/gms/internal/zzekf;->zzndd:Lcom/google/android/gms/internal/zzekf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzekf;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
