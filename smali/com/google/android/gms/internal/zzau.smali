.class public Lcom/google/android/gms/internal/zzau;
.super Lcom/google/android/gms/internal/zzr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzr<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzcj:Lcom/google/android/gms/internal/zzy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzy<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/google/android/gms/internal/zzy;Lcom/google/android/gms/internal/zzx;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzy<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/zzx;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/gms/internal/zzr;-><init>(ILjava/lang/String;Lcom/google/android/gms/internal/zzx;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/zzau;->zzcj:Lcom/google/android/gms/internal/zzy;

    return-void
.end method


# virtual methods
.method protected final zza(Lcom/google/android/gms/internal/zzp;)Lcom/google/android/gms/internal/zzw;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzp;",
            ")",
            "Lcom/google/android/gms/internal/zzw<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzp;->data:[B

    iget-object v2, p1, Lcom/google/android/gms/internal/zzp;->zzac:Ljava/util/Map;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzao;->zzb(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzp;->data:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/zzao;->zzb(Lcom/google/android/gms/internal/zzp;)Lcom/google/android/gms/internal/zzc;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzw;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/zzc;)Lcom/google/android/gms/internal/zzw;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic zza(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzau;->zzh(Ljava/lang/String;)V

    return-void
.end method

.method protected zzh(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzau;->zzcj:Lcom/google/android/gms/internal/zzy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzau;->zzcj:Lcom/google/android/gms/internal/zzy;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzy;->zzb(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
