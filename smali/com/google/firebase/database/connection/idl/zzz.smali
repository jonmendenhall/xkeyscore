.class final Lcom/google/firebase/database/connection/idl/zzz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzebl;


# instance fields
.field private synthetic zzmqs:Lcom/google/firebase/database/connection/idl/zzq;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;Lcom/google/firebase/database/connection/idl/zzq;)V
    .locals 0

    iput-object p2, p0, Lcom/google/firebase/database/connection/idl/zzz;->zzmqs:Lcom/google/firebase/database/connection/idl/zzq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzbuh()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/zzz;->zzmqs:Lcom/google/firebase/database/connection/idl/zzq;

    invoke-interface {v0}, Lcom/google/firebase/database/connection/idl/zzq;->zzbuh()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final zzbui()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/zzz;->zzmqs:Lcom/google/firebase/database/connection/idl/zzq;

    invoke-interface {v0}, Lcom/google/firebase/database/connection/idl/zzq;->zzbui()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final zzbuj()Lcom/google/android/gms/internal/zzebb;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/zzz;->zzmqs:Lcom/google/firebase/database/connection/idl/zzq;

    invoke-interface {v0}, Lcom/google/firebase/database/connection/idl/zzq;->zzbvh()Lcom/google/firebase/database/connection/idl/zza;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/database/connection/idl/zza;->zza(Lcom/google/firebase/database/connection/idl/zza;)Lcom/google/android/gms/internal/zzebb;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
