.class public final Lcom/google/android/gms/internal/zzffw$zza;
.super Lcom/google/android/gms/internal/zzffu$zza;

# interfaces
.implements Lcom/google/android/gms/internal/zzfhg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzffw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzffu$zza<",
        "Lcom/google/android/gms/internal/zzffw;",
        "Lcom/google/android/gms/internal/zzffw$zza;",
        ">;",
        "Lcom/google/android/gms/internal/zzfhg;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzffw;->zzcxy()Lcom/google/android/gms/internal/zzffw;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzffu$zza;-><init>(Lcom/google/android/gms/internal/zzffu;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzffx;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzffw$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzlt(I)Lcom/google/android/gms/internal/zzffw$zza;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzffu$zza;->zzcxr()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzffw$zza;->zzpgv:Lcom/google/android/gms/internal/zzffu;

    check-cast v0, Lcom/google/android/gms/internal/zzffw;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzffw;->zza(Lcom/google/android/gms/internal/zzffw;I)V

    return-object p0
.end method
