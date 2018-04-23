.class final Lcom/google/firebase/auth/internal/zzl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzmhj:Ljava/lang/String;

.field final synthetic zzmhv:Lcom/google/firebase/auth/internal/zzk;


# direct methods
.method constructor <init>(Lcom/google/firebase/auth/internal/zzk;Ljava/lang/String;)V
    .locals 0
    .param p1    # Lcom/google/firebase/auth/internal/zzk;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzl;->zzmhv:Lcom/google/firebase/auth/internal/zzk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzl;->zzmhj:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzl;->zzmhj:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/firebase/FirebaseApp;->getInstance(Ljava/lang/String;)Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/firebase/auth/FirebaseAuth;->zzce(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/auth/internal/zzk;->zzbsf()Lcom/google/android/gms/internal/zzbgg;

    move-result-object v1

    const-string v2, "Token refreshing started"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzbgg;->zza(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/google/firebase/auth/internal/zzm;

    invoke-direct {v1, p0}, Lcom/google/firebase/auth/internal/zzm;-><init>(Lcom/google/firebase/auth/internal/zzl;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    :cond_0
    return-void
.end method
