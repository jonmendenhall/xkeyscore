.class final Lcom/google/firebase/auth/internal/zzm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field private synthetic zzmhw:Lcom/google/firebase/auth/internal/zzl;


# direct methods
.method constructor <init>(Lcom/google/firebase/auth/internal/zzl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzm;->zzmhw:Lcom/google/firebase/auth/internal/zzl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 2
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    instance-of p1, p1, Lcom/google/firebase/FirebaseNetworkException;

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/google/firebase/auth/internal/zzk;->zzbsf()Lcom/google/android/gms/internal/zzbgg;

    move-result-object p1

    const-string v0, "Failure to refresh token; scheduling refresh after failure"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbgg;->zza(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/firebase/auth/internal/zzm;->zzmhw:Lcom/google/firebase/auth/internal/zzl;

    iget-object p1, p1, Lcom/google/firebase/auth/internal/zzl;->zzmhv:Lcom/google/firebase/auth/internal/zzk;

    invoke-virtual {p1}, Lcom/google/firebase/auth/internal/zzk;->zzbse()V

    :cond_0
    return-void
.end method
