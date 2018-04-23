.class final Lcom/google/android/gms/common/api/internal/zzbe;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzesc:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private synthetic zzfsj:Lcom/google/android/gms/common/api/internal/zzba;

.field private synthetic zzfsl:Lcom/google/android/gms/common/api/internal/zzda;

.field private synthetic zzfsm:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zzba;Lcom/google/android/gms/common/api/internal/zzda;ZLcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzbe;->zzfsj:Lcom/google/android/gms/common/api/internal/zzba;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zzbe;->zzfsl:Lcom/google/android/gms/common/api/internal/zzda;

    iput-boolean p3, p0, Lcom/google/android/gms/common/api/internal/zzbe;->zzfsm:Z

    iput-object p4, p0, Lcom/google/android/gms/common/api/internal/zzbe;->zzesc:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/common/api/Result;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzbe;->zzfsj:Lcom/google/android/gms/common/api/internal/zzba;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzba;->zzc(Lcom/google/android/gms/common/api/internal/zzba;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/internal/zzz;->zzbt(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/zzz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/internal/zzz;->zzabv()V

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzbe;->zzfsj:Lcom/google/android/gms/common/api/internal/zzba;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzbe;->zzfsj:Lcom/google/android/gms/common/api/internal/zzba;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->reconnect()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzbe;->zzfsl:Lcom/google/android/gms/common/api/internal/zzda;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    iget-boolean p1, p0, Lcom/google/android/gms/common/api/internal/zzbe;->zzfsm:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zzbe;->zzesc:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    :cond_1
    return-void
.end method
