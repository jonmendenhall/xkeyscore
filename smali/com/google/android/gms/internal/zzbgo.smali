.class public final Lcom/google/android/gms/internal/zzbgo;
.super Lcom/google/android/gms/internal/zzbfm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/zzbfm;"
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/zzbgr;


# instance fields
.field private final zzeck:I

.field protected final zzgce:I

.field protected final zzgcf:Z

.field protected final zzgcg:I

.field protected final zzgch:Z

.field protected final zzgci:Ljava/lang/String;

.field protected final zzgcj:I

.field protected final zzgck:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/gms/internal/zzbgn;",
            ">;"
        }
    .end annotation
.end field

.field private zzgcl:Ljava/lang/String;

.field private zzgcm:Lcom/google/android/gms/internal/zzbgt;

.field private zzgcn:Lcom/google/android/gms/internal/zzbgp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbgp<",
            "TI;TO;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbgr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbgr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbgo;->CREATOR:Lcom/google/android/gms/internal/zzbgr;

    return-void
.end method

.method constructor <init>(IIZIZLjava/lang/String;ILjava/lang/String;Lcom/google/android/gms/internal/zzbgh;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbfm;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzbgo;->zzeck:I

    iput p2, p0, Lcom/google/android/gms/internal/zzbgo;->zzgce:I

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzbgo;->zzgcf:Z

    iput p4, p0, Lcom/google/android/gms/internal/zzbgo;->zzgcg:I

    iput-boolean p5, p0, Lcom/google/android/gms/internal/zzbgo;->zzgch:Z

    iput-object p6, p0, Lcom/google/android/gms/internal/zzbgo;->zzgci:Ljava/lang/String;

    iput p7, p0, Lcom/google/android/gms/internal/zzbgo;->zzgcj:I

    const/4 p1, 0x0

    if-nez p8, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbgo;->zzgck:Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbgo;->zzgcl:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-class p2, Lcom/google/android/gms/internal/zzbgy;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbgo;->zzgck:Ljava/lang/Class;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzbgo;->zzgcl:Ljava/lang/String;

    :goto_0
    if-nez p9, :cond_1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbgo;->zzgcn:Lcom/google/android/gms/internal/zzbgp;

    return-void

    :cond_1
    invoke-virtual {p9}, Lcom/google/android/gms/internal/zzbgh;->zzalt()Lcom/google/android/gms/internal/zzbgp;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbgo;->zzgcn:Lcom/google/android/gms/internal/zzbgp;

    return-void
.end method

.method private constructor <init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/zzbgp;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZIZ",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/gms/internal/zzbgn;",
            ">;",
            "Lcom/google/android/gms/internal/zzbgp<",
            "TI;TO;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbfm;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzbgo;->zzeck:I

    iput p1, p0, Lcom/google/android/gms/internal/zzbgo;->zzgce:I

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzbgo;->zzgcf:Z

    iput p3, p0, Lcom/google/android/gms/internal/zzbgo;->zzgcg:I

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzbgo;->zzgch:Z

    iput-object p5, p0, Lcom/google/android/gms/internal/zzbgo;->zzgci:Ljava/lang/String;

    iput p6, p0, Lcom/google/android/gms/internal/zzbgo;->zzgcj:I

    iput-object p7, p0, Lcom/google/android/gms/internal/zzbgo;->zzgck:Ljava/lang/Class;

    if-nez p7, :cond_0

    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzbgo;->zzgcl:Ljava/lang/String;

    goto :goto_1

    :cond_0
    invoke-virtual {p7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :goto_1
    iput-object p8, p0, Lcom/google/android/gms/internal/zzbgo;->zzgcn:Lcom/google/android/gms/internal/zzbgp;

    return-void
.end method

.method public static zza(Ljava/lang/String;ILcom/google/android/gms/internal/zzbgp;Z)Lcom/google/android/gms/internal/zzbgo;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/google/android/gms/internal/zzbgp<",
            "**>;Z)",
            "Lcom/google/android/gms/internal/zzbgo;"
        }
    .end annotation

    new-instance p3, Lcom/google/android/gms/internal/zzbgo;

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v0, p3

    move-object v5, p0

    move v6, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/zzbgo;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/zzbgp;)V

    return-object p3
.end method

.method public static zza(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/zzbgo;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/zzbgn;",
            ">(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/zzbgo<",
            "TT;TT;>;"
        }
    .end annotation

    new-instance v9, Lcom/google/android/gms/internal/zzbgo;

    const/16 v1, 0xb

    const/4 v2, 0x0

    const/16 v3, 0xb

    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move-object v5, p0

    move v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/zzbgo;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/zzbgp;)V

    return-object v9
.end method

.method private zzalv()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbgo;->zzgcl:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbgo;->zzgcl:Ljava/lang/String;

    return-object v0
.end method

.method public static zzb(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/zzbgo;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/zzbgn;",
            ">(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/zzbgo<",
            "Ljava/util/ArrayList<",
            "TT;>;",
            "Ljava/util/ArrayList<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v9, Lcom/google/android/gms/internal/zzbgo;

    const/16 v1, 0xb

    const/4 v2, 0x1

    const/16 v3, 0xb

    const/4 v4, 0x1

    const/4 v8, 0x0

    move-object v0, v9

    move-object v5, p0

    move v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/zzbgo;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/zzbgp;)V

    return-object v9
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzbgo;)Lcom/google/android/gms/internal/zzbgp;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzbgo;->zzgcn:Lcom/google/android/gms/internal/zzbgp;

    return-object p0
.end method

.method public static zzj(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzbgo;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/internal/zzbgo<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v9, Lcom/google/android/gms/internal/zzbgo;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move-object v5, p0

    move v6, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/zzbgo;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/zzbgp;)V

    return-object v9
.end method

.method public static zzk(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzbgo;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/internal/zzbgo<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v9, Lcom/google/android/gms/internal/zzbgo;

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x6

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move-object v5, p0

    move v6, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/zzbgo;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/zzbgp;)V

    return-object v9
.end method

.method public static zzl(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzbgo;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/internal/zzbgo<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v9, Lcom/google/android/gms/internal/zzbgo;

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x7

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move-object v5, p0

    move v6, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/zzbgo;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/zzbgp;)V

    return-object v9
.end method

.method public static zzm(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzbgo;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/internal/zzbgo<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v9, Lcom/google/android/gms/internal/zzbgo;

    const/4 v1, 0x7

    const/4 v2, 0x1

    const/4 v3, 0x7

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move-object v5, p0

    move v6, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/zzbgo;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/zzbgp;)V

    return-object v9
.end method

.method public static zzn(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzbgo;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/internal/zzbgo<",
            "[B[B>;"
        }
    .end annotation

    new-instance p1, Lcom/google/android/gms/internal/zzbgo;

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/zzbgo;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/zzbgp;)V

    return-object p1
.end method


# virtual methods
.method public final convertBack(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)TI;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbgo;->zzgcn:Lcom/google/android/gms/internal/zzbgp;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzbgp;->convertBack(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbg;->zzx(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzbi;

    move-result-object v0

    const-string v1, "versionCode"

    iget v2, p0, Lcom/google/android/gms/internal/zzbgo;->zzeck:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzbi;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzbi;

    move-result-object v0

    const-string v1, "typeIn"

    iget v2, p0, Lcom/google/android/gms/internal/zzbgo;->zzgce:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzbi;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzbi;

    move-result-object v0

    const-string v1, "typeInArray"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzbgo;->zzgcf:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzbi;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzbi;

    move-result-object v0

    const-string v1, "typeOut"

    iget v2, p0, Lcom/google/android/gms/internal/zzbgo;->zzgcg:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzbi;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzbi;

    move-result-object v0

    const-string v1, "typeOutArray"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzbgo;->zzgch:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzbi;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzbi;

    move-result-object v0

    const-string v1, "outputFieldName"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbgo;->zzgci:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzbi;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzbi;

    move-result-object v0

    const-string v1, "safeParcelFieldId"

    iget v2, p0, Lcom/google/android/gms/internal/zzbgo;->zzgcj:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzbi;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzbi;

    move-result-object v0

    const-string v1, "concreteTypeName"

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbgo;->zzalv()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzbi;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzbi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbgo;->zzgck:Ljava/lang/Class;

    if-eqz v1, :cond_0

    const-string v2, "concreteType.class"

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/zzbi;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzbi;

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbgo;->zzgcn:Lcom/google/android/gms/internal/zzbgp;

    if-eqz v1, :cond_1

    const-string v1, "converterName"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbgo;->zzgcn:Lcom/google/android/gms/internal/zzbgp;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzbi;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzbi;

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzbi;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbfp;->zze(Landroid/os/Parcel;)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/zzbgo;->zzeck:I

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/internal/zzbfp;->zzc(Landroid/os/Parcel;II)V

    iget v1, p0, Lcom/google/android/gms/internal/zzbgo;->zzgce:I

    const/4 v2, 0x2

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/internal/zzbfp;->zzc(Landroid/os/Parcel;II)V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzbgo;->zzgcf:Z

    const/4 v2, 0x3

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;IZ)V

    iget v1, p0, Lcom/google/android/gms/internal/zzbgo;->zzgcg:I

    const/4 v2, 0x4

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/internal/zzbfp;->zzc(Landroid/os/Parcel;II)V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzbgo;->zzgch:Z

    const/4 v2, 0x5

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbgo;->zzgci:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget v1, p0, Lcom/google/android/gms/internal/zzbgo;->zzgcj:I

    const/4 v3, 0x7

    invoke-static {p1, v3, v1}, Lcom/google/android/gms/internal/zzbfp;->zzc(Landroid/os/Parcel;II)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbgo;->zzalv()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x8

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbgo;->zzgcn:Lcom/google/android/gms/internal/zzbgp;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbgo;->zzgcn:Lcom/google/android/gms/internal/zzbgp;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbgh;->zza(Lcom/google/android/gms/internal/zzbgp;)Lcom/google/android/gms/internal/zzbgh;

    move-result-object v1

    :goto_0
    const/16 v3, 0x9

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbfp;->zzai(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzbgt;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbgo;->zzgcm:Lcom/google/android/gms/internal/zzbgt;

    return-void
.end method

.method public final zzalu()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzbgo;->zzgcj:I

    return v0
.end method

.method public final zzalw()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbgo;->zzgcn:Lcom/google/android/gms/internal/zzbgp;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzalx()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzbgo<",
            "**>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbgo;->zzgcl:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbgo;->zzgcm:Lcom/google/android/gms/internal/zzbgt;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbgo;->zzgcm:Lcom/google/android/gms/internal/zzbgt;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbgo;->zzgcl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbgt;->zzgq(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
