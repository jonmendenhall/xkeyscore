.class final Lcom/google/firebase/database/connection/idl/zzg;
.super Lcom/google/firebase/database/connection/idl/zzr;


# instance fields
.field private synthetic zzmqp:Lcom/google/android/gms/internal/zzebl;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/connection/idl/zzf;Lcom/google/android/gms/internal/zzebl;)V
    .locals 0

    iput-object p2, p0, Lcom/google/firebase/database/connection/idl/zzg;->zzmqp:Lcom/google/android/gms/internal/zzebl;

    invoke-direct {p0}, Lcom/google/firebase/database/connection/idl/zzr;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzbuh()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/zzg;->zzmqp:Lcom/google/android/gms/internal/zzebl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzebl;->zzbuh()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzbui()Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/zzg;->zzmqp:Lcom/google/android/gms/internal/zzebl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzebl;->zzbui()Z

    move-result v0

    return v0
.end method

.method public final zzbvh()Lcom/google/firebase/database/connection/idl/zza;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/zzg;->zzmqp:Lcom/google/android/gms/internal/zzebl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzebl;->zzbuj()Lcom/google/android/gms/internal/zzebb;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/database/connection/idl/zza;->zza(Lcom/google/android/gms/internal/zzebb;)Lcom/google/firebase/database/connection/idl/zza;

    move-result-object v0

    return-object v0
.end method
