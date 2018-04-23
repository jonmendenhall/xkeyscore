.class final Lcom/google/android/gms/internal/zzcje;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "[B>;"
    }
.end annotation


# instance fields
.field private synthetic zzimf:Ljava/lang/String;

.field private synthetic zzjgo:Lcom/google/android/gms/internal/zzcir;

.field private synthetic zzjgs:Lcom/google/android/gms/internal/zzcha;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcir;Lcom/google/android/gms/internal/zzcha;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcje;->zzjgo:Lcom/google/android/gms/internal/zzcir;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcje;->zzjgs:Lcom/google/android/gms/internal/zzcha;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcje;->zzimf:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcje;->zzjgo:Lcom/google/android/gms/internal/zzcir;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcir;->zza(Lcom/google/android/gms/internal/zzcir;)Lcom/google/android/gms/internal/zzcim;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzbal()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcje;->zzjgo:Lcom/google/android/gms/internal/zzcir;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcir;->zza(Lcom/google/android/gms/internal/zzcir;)Lcom/google/android/gms/internal/zzcim;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcje;->zzjgs:Lcom/google/android/gms/internal/zzcha;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcje;->zzimf:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcim;->zza(Lcom/google/android/gms/internal/zzcha;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method
