.class final Lcom/google/android/gms/internal/zzckz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzjit:Lcom/google/android/gms/internal/zzcku;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcku;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzckz;->zzjit:Lcom/google/android/gms/internal/zzcku;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckz;->zzjit:Lcom/google/android/gms/internal/zzcku;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcku;->zzjij:Lcom/google/android/gms/internal/zzckg;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzckg;->zza(Lcom/google/android/gms/internal/zzckg;Lcom/google/android/gms/internal/zzche;)Lcom/google/android/gms/internal/zzche;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckz;->zzjit:Lcom/google/android/gms/internal/zzcku;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcku;->zzjij:Lcom/google/android/gms/internal/zzckg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzckg;->zzb(Lcom/google/android/gms/internal/zzckg;)V

    return-void
.end method
