.class final Lcom/google/android/gms/internal/zzcio;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzimf:Ljava/lang/String;

.field private synthetic zzjgh:Lcom/google/android/gms/internal/zzcim;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcim;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcio;->zzjgh:Lcom/google/android/gms/internal/zzcim;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcio;->zzimf:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcio;->zzjgh:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcio;->zzimf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcgo;->zzjb(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcgh;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcio;->zzjgh:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "App info was null when attempting to get app instance id"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgh;->getAppInstanceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
