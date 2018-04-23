.class final Lcom/google/firebase/auth/internal/zzt;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/internal/zzl;


# instance fields
.field private synthetic zzmid:Lcom/google/firebase/auth/internal/zzs;


# direct methods
.method constructor <init>(Lcom/google/firebase/auth/internal/zzs;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzt;->zzmid:Lcom/google/firebase/auth/internal/zzs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzbf(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/firebase/auth/internal/zzt;->zzmid:Lcom/google/firebase/auth/internal/zzs;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/firebase/auth/internal/zzs;->zza(Lcom/google/firebase/auth/internal/zzs;Z)Z

    iget-object p1, p0, Lcom/google/firebase/auth/internal/zzt;->zzmid:Lcom/google/firebase/auth/internal/zzs;

    invoke-virtual {p1}, Lcom/google/firebase/auth/internal/zzs;->cancel()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/firebase/auth/internal/zzt;->zzmid:Lcom/google/firebase/auth/internal/zzs;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/firebase/auth/internal/zzs;->zza(Lcom/google/firebase/auth/internal/zzs;Z)Z

    iget-object p1, p0, Lcom/google/firebase/auth/internal/zzt;->zzmid:Lcom/google/firebase/auth/internal/zzs;

    invoke-static {p1}, Lcom/google/firebase/auth/internal/zzs;->zzb(Lcom/google/firebase/auth/internal/zzs;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/firebase/auth/internal/zzt;->zzmid:Lcom/google/firebase/auth/internal/zzs;

    invoke-static {p1}, Lcom/google/firebase/auth/internal/zzs;->zzc(Lcom/google/firebase/auth/internal/zzs;)Lcom/google/firebase/auth/internal/zzk;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/auth/internal/zzk;->zzbsd()V

    :cond_1
    return-void
.end method
