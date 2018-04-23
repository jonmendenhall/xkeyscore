.class final Lcom/google/firebase/auth/zzj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzmdi:Lcom/google/firebase/auth/FirebaseAuth;

.field private synthetic zzmdk:Lcom/google/firebase/internal/zzc;


# direct methods
.method constructor <init>(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/internal/zzc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/auth/zzj;->zzmdi:Lcom/google/firebase/auth/FirebaseAuth;

    iput-object p2, p0, Lcom/google/firebase/auth/zzj;->zzmdk:Lcom/google/firebase/internal/zzc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/auth/zzj;->zzmdi:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-static {v0}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/auth/zzj;->zzmdk:Lcom/google/firebase/internal/zzc;

    invoke-virtual {v0, v1}, Lcom/google/firebase/FirebaseApp;->zza(Lcom/google/firebase/internal/zzc;)V

    iget-object v0, p0, Lcom/google/firebase/auth/zzj;->zzmdi:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-static {v0}, Lcom/google/firebase/auth/FirebaseAuth;->zzb(Lcom/google/firebase/auth/FirebaseAuth;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/auth/FirebaseAuth$IdTokenListener;

    iget-object v2, p0, Lcom/google/firebase/auth/zzj;->zzmdi:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-interface {v1, v2}, Lcom/google/firebase/auth/FirebaseAuth$IdTokenListener;->onIdTokenChanged(Lcom/google/firebase/auth/FirebaseAuth;)V

    goto :goto_0

    :cond_0
    return-void
.end method
