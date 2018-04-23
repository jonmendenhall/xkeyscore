.class final Lcom/google/android/gms/internal/zzfgq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzfhw;


# static fields
.field private static final zzpig:Lcom/google/android/gms/internal/zzfhd;


# instance fields
.field private final zzpie:Lcom/google/android/gms/internal/zzfhd;

.field private final zzpif:Lcom/google/android/gms/internal/zzfgu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzfgr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzfgr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzfgq;->zzpig:Lcom/google/android/gms/internal/zzfhd;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzfgu;->zzpil:Lcom/google/android/gms/internal/zzfgu;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzfgq;-><init>(Lcom/google/android/gms/internal/zzfgu;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzfgu;)V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/zzfgt;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/gms/internal/zzfhd;

    invoke-static {}, Lcom/google/android/gms/internal/zzfft;->zzcxl()Lcom/google/android/gms/internal/zzfft;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {}, Lcom/google/android/gms/internal/zzfgq;->zzcyo()Lcom/google/android/gms/internal/zzfhd;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzfgt;-><init>([Lcom/google/android/gms/internal/zzfhd;)V

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/zzfgq;-><init>(Lcom/google/android/gms/internal/zzfhd;Lcom/google/android/gms/internal/zzfgu;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzfhd;Lcom/google/android/gms/internal/zzfgu;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "messageInfoFactory"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzffz;->zzc(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzfhd;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfgq;->zzpie:Lcom/google/android/gms/internal/zzfhd;

    const-string p1, "mode"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzffz;->zzc(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzfgu;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfgq;->zzpif:Lcom/google/android/gms/internal/zzfgu;

    return-void
.end method

.method private static zza(Ljava/lang/Class;Lcom/google/android/gms/internal/zzfhc;)Lcom/google/android/gms/internal/zzfhv;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/android/gms/internal/zzfhc;",
            ")",
            "Lcom/google/android/gms/internal/zzfhv<",
            "TT;>;"
        }
    .end annotation

    const-class v0, Lcom/google/android/gms/internal/zzffu;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzfgq;->zza(Lcom/google/android/gms/internal/zzfhc;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzfgm;->zzcyn()Lcom/google/android/gms/internal/zzfgm;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/zzfhx;->zzczg()Lcom/google/android/gms/internal/zzfin;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/zzffp;->zzcxd()Lcom/google/android/gms/internal/zzffn;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/internal/zzfhb;->zzcyt()Lcom/google/android/gms/internal/zzfgz;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/zzfhi;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/zzfhc;Lcom/google/android/gms/internal/zzfgm;Lcom/google/android/gms/internal/zzfin;Lcom/google/android/gms/internal/zzffn;Lcom/google/android/gms/internal/zzfgz;)Lcom/google/android/gms/internal/zzfhi;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/zzfgm;->zzcyn()Lcom/google/android/gms/internal/zzfgm;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/zzfhx;->zzczg()Lcom/google/android/gms/internal/zzfin;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/zzfhb;->zzcyt()Lcom/google/android/gms/internal/zzfgz;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/zzfhi;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/zzfhc;Lcom/google/android/gms/internal/zzfgm;Lcom/google/android/gms/internal/zzfin;Lcom/google/android/gms/internal/zzffn;Lcom/google/android/gms/internal/zzfgz;)Lcom/google/android/gms/internal/zzfhi;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/internal/zzfgq;->zza(Lcom/google/android/gms/internal/zzfhc;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/zzfgm;->zzcym()Lcom/google/android/gms/internal/zzfgm;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/zzfhx;->zzcze()Lcom/google/android/gms/internal/zzfin;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/zzffp;->zzcxe()Lcom/google/android/gms/internal/zzffn;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/internal/zzfhb;->zzcys()Lcom/google/android/gms/internal/zzfgz;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/zzfhi;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/zzfhc;Lcom/google/android/gms/internal/zzfgm;Lcom/google/android/gms/internal/zzfin;Lcom/google/android/gms/internal/zzffn;Lcom/google/android/gms/internal/zzfgz;)Lcom/google/android/gms/internal/zzfhi;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/zzfgm;->zzcym()Lcom/google/android/gms/internal/zzfgm;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/zzfhx;->zzczf()Lcom/google/android/gms/internal/zzfin;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/zzfhb;->zzcys()Lcom/google/android/gms/internal/zzfgz;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/zzfhi;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/zzfhc;Lcom/google/android/gms/internal/zzfgm;Lcom/google/android/gms/internal/zzfin;Lcom/google/android/gms/internal/zzffn;Lcom/google/android/gms/internal/zzfgz;)Lcom/google/android/gms/internal/zzfhi;

    move-result-object p0

    return-object p0
.end method

.method private static zza(Lcom/google/android/gms/internal/zzfhc;)Z
    .locals 1

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzfhc;->zzcyv()I

    move-result p0

    sget v0, Lcom/google/android/gms/internal/zzfhm;->zzpiy:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static zzb(Ljava/lang/Class;Lcom/google/android/gms/internal/zzfhc;)Lcom/google/android/gms/internal/zzfhv;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/android/gms/internal/zzfhc;",
            ")",
            "Lcom/google/android/gms/internal/zzfhv<",
            "TT;>;"
        }
    .end annotation

    const-class v0, Lcom/google/android/gms/internal/zzffu;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzfgq;->zza(Lcom/google/android/gms/internal/zzfhc;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzfgm;->zzcyn()Lcom/google/android/gms/internal/zzfgm;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/zzfhx;->zzczg()Lcom/google/android/gms/internal/zzfin;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/zzffp;->zzcxd()Lcom/google/android/gms/internal/zzffn;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/internal/zzfhb;->zzcyt()Lcom/google/android/gms/internal/zzfgz;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/zzfhi;->zzb(Ljava/lang/Class;Lcom/google/android/gms/internal/zzfhc;Lcom/google/android/gms/internal/zzfgm;Lcom/google/android/gms/internal/zzfin;Lcom/google/android/gms/internal/zzffn;Lcom/google/android/gms/internal/zzfgz;)Lcom/google/android/gms/internal/zzfhi;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/zzfgm;->zzcyn()Lcom/google/android/gms/internal/zzfgm;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/zzfhx;->zzczg()Lcom/google/android/gms/internal/zzfin;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/zzfhb;->zzcyt()Lcom/google/android/gms/internal/zzfgz;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/zzfhi;->zzb(Ljava/lang/Class;Lcom/google/android/gms/internal/zzfhc;Lcom/google/android/gms/internal/zzfgm;Lcom/google/android/gms/internal/zzfin;Lcom/google/android/gms/internal/zzffn;Lcom/google/android/gms/internal/zzfgz;)Lcom/google/android/gms/internal/zzfhi;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/internal/zzfgq;->zza(Lcom/google/android/gms/internal/zzfhc;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/zzfgm;->zzcym()Lcom/google/android/gms/internal/zzfgm;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/zzfhx;->zzcze()Lcom/google/android/gms/internal/zzfin;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/zzffp;->zzcxe()Lcom/google/android/gms/internal/zzffn;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/internal/zzfhb;->zzcys()Lcom/google/android/gms/internal/zzfgz;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/zzfhi;->zzb(Ljava/lang/Class;Lcom/google/android/gms/internal/zzfhc;Lcom/google/android/gms/internal/zzfgm;Lcom/google/android/gms/internal/zzfin;Lcom/google/android/gms/internal/zzffn;Lcom/google/android/gms/internal/zzfgz;)Lcom/google/android/gms/internal/zzfhi;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/zzfgm;->zzcym()Lcom/google/android/gms/internal/zzfgm;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/zzfhx;->zzczf()Lcom/google/android/gms/internal/zzfin;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/zzfhb;->zzcys()Lcom/google/android/gms/internal/zzfgz;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/zzfhi;->zzb(Ljava/lang/Class;Lcom/google/android/gms/internal/zzfhc;Lcom/google/android/gms/internal/zzfgm;Lcom/google/android/gms/internal/zzfin;Lcom/google/android/gms/internal/zzffn;Lcom/google/android/gms/internal/zzfgz;)Lcom/google/android/gms/internal/zzfhi;

    move-result-object p0

    return-object p0
.end method

.method private static zzcyo()Lcom/google/android/gms/internal/zzfhd;
    .locals 4

    :try_start_0
    const-string v0, "com.google.protobuf.DescriptorMessageInfoFactory"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzfhd;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    sget-object v0, Lcom/google/android/gms/internal/zzfgq;->zzpig:Lcom/google/android/gms/internal/zzfhd;

    return-object v0
.end method


# virtual methods
.method public final zzk(Ljava/lang/Class;)Lcom/google/android/gms/internal/zzfhv;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/zzfhv<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/zzfhx;->zzm(Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfgq;->zzpie:Lcom/google/android/gms/internal/zzfhd;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzfhd;->zzj(Ljava/lang/Class;)Lcom/google/android/gms/internal/zzfhc;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzfhc;->zzcyw()Z

    move-result v1

    if-eqz v1, :cond_1

    const-class v1, Lcom/google/android/gms/internal/zzffu;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzfhx;->zzczg()Lcom/google/android/gms/internal/zzfin;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/zzffp;->zzcxd()Lcom/google/android/gms/internal/zzffn;

    move-result-object v2

    :goto_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/zzfhc;->zzcyx()Lcom/google/android/gms/internal/zzfhe;

    move-result-object v0

    invoke-static {p1, v1, v2, v0}, Lcom/google/android/gms/internal/zzfhj;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/zzfin;Lcom/google/android/gms/internal/zzffn;Lcom/google/android/gms/internal/zzfhe;)Lcom/google/android/gms/internal/zzfhj;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/zzfhx;->zzcze()Lcom/google/android/gms/internal/zzfin;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/zzffp;->zzcxe()Lcom/google/android/gms/internal/zzffn;

    move-result-object v2

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/zzfgs;->zzpih:[I

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfgq;->zzpif:Lcom/google/android/gms/internal/zzfgu;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzfgu;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzfhc;->zzcyy()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzfgq;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/zzfhc;)Lcom/google/android/gms/internal/zzfhv;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzfgq;->zzb(Ljava/lang/Class;Lcom/google/android/gms/internal/zzfhc;)Lcom/google/android/gms/internal/zzfhv;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzfgq;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/zzfhc;)Lcom/google/android/gms/internal/zzfhv;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzfgq;->zzb(Ljava/lang/Class;Lcom/google/android/gms/internal/zzfhc;)Lcom/google/android/gms/internal/zzfhv;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
